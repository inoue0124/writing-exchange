import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/model/post_status_converter.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class PostRepositoryInterface {
  Future<void> upsert(Post post);
  Future<Post?> getById(String postId);
  Future<List<Post>> getListByUserId(String userId);
  Future<void> deleteById(String postId);
}

class PostRepository implements PostRepositoryInterface {
  final Ref _ref;
  const PostRepository(this._ref);

  @override
  Future<void> upsert(Post post) async {
    try {
      final postMap = {
        ...post.toJson(),
        'postedAt': FieldValue.serverTimestamp(),
      };
      postMap.remove('correctionCount');
      await _ref.read(firebaseFirestoreProvider).postsRef().add(postMap);
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Post?> getById(String postId) async {
    try {
      final snap = await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .doc(postId)
          .get();
      final data = snap.data();
      if (data == null) {
        return null;
      }
      final post = Post.fromJson(data);
      return post;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String postId) async {
    try {
      await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .doc(postId)
          .delete();
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Post>> getListByUserId(String userId) async {
    try {
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .where('userId', isEqualTo: userId)
          .get();
      return snaps.docs.map((doc) => Post.fromJson(doc.data())).toList();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final postRepositoryProvider = Provider<PostRepositoryInterface>(
  (ref) => PostRepository(ref),
);
