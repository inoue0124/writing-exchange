import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/user.dart';
import 'package:writing_exchange/data/model/user_status.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class UserRepositoryInterface {
  Future<void> upsert(User user);
  Future<User?> getById(String userId);
  Future<void> deleteById(String userId);
}

class UserRepository implements UserRepositoryInterface {
  final Reader _reader;
  const UserRepository(this._reader);

  @override
  Future<void> upsert(User user) async {
    try {
      await _reader(firebaseFirestoreProvider).usersRef().add(user.toJson());
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<User?> getById(String userId) async {
    try {
      final snap =
          await _reader(firebaseFirestoreProvider).usersRef().doc(userId).get();
      final data = snap.data();
      if (data == null) {
        return null;
      }
      final user = User.fromJson(data);
      return user;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String userId) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .usersRef()
          .doc(userId)
          .update({"status": UserStatus.withdraw});
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final userRepositoryProvider = Provider<UserRepositoryInterface>(
  (ref) => UserRepository(ref.read),
);
