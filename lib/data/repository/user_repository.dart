import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/user.dart';
import 'package:writing_exchange/data/model/user_status.dart';

abstract class UserRepositoryInterface {
  Future<User> getUsersInfo();
}

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepository(ref.read));

class UserRepository implements UserRepositoryInterface {
  final Reader _reader;

  const UserRepository(this._reader);

  @override
  Future<User> getUsersInfo() async {
    final fireStore = _reader(firebaseFirestoreProvider);
    final user = User(
      name: "name",
      email: "email",
      status: UserStatus.active,
      createdAt: DateTime.now(),
      postCount: 1,
    );
    await _reader(firebaseFirestoreProvider)
        .collection('users')
        .add(user.toJson());
    try {
      final snapShot = await fireStore.collection('users').get();
      print(snapShot);
      final user = User.fromJson(snapShot.docs.first.data());
      return user;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}
