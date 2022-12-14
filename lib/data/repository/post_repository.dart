import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/language_converter.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/model/post_status_converter.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class PostRepositoryInterface {
  Future<void> create(
    String title,
    String content,
    String audioUrl,
    List<String> imageUrls,
    PostStatus status,
    Language language,
  );
  Future<void> update(Post post);
  Future<Post?> getById(String postId);
  Future<List<Post>> getList({String? userId, Language? targetLanguage});
  Future<List<Post>> getMyList({String? userId, Language? targetLanguage});
  Future<void> deleteById(String postId);
  Future<Post?> getCorrectionNeeded(Language nativeLanguage);
}

class PostRepository implements PostRepositoryInterface {
  final Ref _ref;
  const PostRepository(this._ref, {required AuthServiceInterface authService})
      : _authService = authService;
  final AuthServiceInterface _authService;

  @override
  Future<void> create(
    String title,
    String content,
    String audioUrl,
    List<String> imageUrls,
    PostStatus status,
    Language language,
  ) async {
    try {
      final userId = await _authService.getUserId();
      final id = _ref.read(firebaseFirestoreProvider).postsRef().doc().id;

      final postMap = {
        'id': id,
        'title': title,
        'content': content,
        'audioUrl': audioUrl,
        'imageUrls': imageUrls,
        'status': const PostStatusConverter().toJson(status),
        'language': const LanguageConverter().toJson(language),
        'userId': userId,
        'postedAt': FieldValue.serverTimestamp(),
      };
      await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .doc(id)
          .set(postMap);
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> update(Post post) async {
    try {
      final postMap = {
        ...post.toJson(),
        'updatedAt': FieldValue.serverTimestamp(),
      };
      await _ref.read(firebaseFirestoreProvider).postsRef().doc(post.id).set(
            postMap,
            SetOptions(merge: true),
          );
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
  Future<List<Post>> getList({String? userId, Language? targetLanguage}) async {
    try {
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .where('userId', isEqualTo: userId)
          .where('language', isEqualTo: targetLanguage?.isoCode)
          .where(
            'status',
            isEqualTo: PostStatusExtension.statusToString(PostStatus.active),
          )
          .orderBy('postedAt', descending: true)
          .get();
      return snaps.docs.map((doc) => Post.fromJson(doc.data())).toList();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Post>> getMyList({
    String? userId,
    Language? targetLanguage,
  }) async {
    try {
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .where('userId', isEqualTo: userId)
          .where('language', isEqualTo: targetLanguage?.isoCode)
          .where(
            'status',
            isEqualTo: PostStatusExtension.statusToString(PostStatus.active),
          )
          .orderBy('postedAt', descending: true)
          .get();
      return snaps.docs.map((doc) => Post.fromJson(doc.data())).toList();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Post?> getCorrectionNeeded(Language nativeLanguage) async {
    try {
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .postsRef()
          .where('language', isEqualTo: nativeLanguage.isoCode)
          .where(
            'status',
            isEqualTo: PostStatusExtension.statusToString(PostStatus.active),
          )
          .orderBy('postedAt')
          .orderBy('correctionCount')
          .limit(1)
          .get();
      if (snaps.docs.isEmpty) return null;
      return Post.fromJson(snaps.docs[0].data());
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final postRepositoryProvider = Provider<PostRepositoryInterface>(
  (ref) => PostRepository(
    ref,
    authService: ref.read(authServiceProvider),
  ),
);
