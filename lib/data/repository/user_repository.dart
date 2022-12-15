import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/app/utils/app_exception.dart';
import 'package:writing_exchange/app/utils/pref_keys.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/user.dart';
import 'package:writing_exchange/data/model/user_status.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class UserRepositoryInterface {
  Future<void> upsert(User user);
  Future<User> getMe();
  Future<User?> getById(String userId);
  Future<void> deleteById(String userId);
}

class UserRepository implements UserRepositoryInterface {
  final Ref _ref;
  UserRepository(this._ref, {required AuthServiceInterface authService})
      : _authService = authService;
  final AuthServiceInterface _authService;

  @override
  Future<void> upsert(User user) async {
    try {
      await _ref
          .read(firebaseFirestoreProvider)
          .usersRef()
          .doc(user.userId)
          .set(
        {
          ...user.toJson(),
          'createdAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );

      // キャッシュ作成
      SharedPreferences prefs =
          await _ref.read(sharedPreferenceProvider.future);
      prefs.setString(PrefKeys.loggedInUser, jsonEncode(user));
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<User?> getById(String userId) async {
    try {
      final snap = await _ref
          .read(firebaseFirestoreProvider)
          .usersRef()
          .doc(userId)
          .get();
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
      await _ref
          .read(firebaseFirestoreProvider)
          .usersRef()
          .doc(userId)
          .update({"status": UserStatus.withdraw});
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<User> getMe() async {
    try {
      final userId = await _authService.getUserId();

      SharedPreferences prefs =
          await _ref.read(sharedPreferenceProvider.future);

      // TODO: コメントアウト外す
      // キャッシュがあればキャッシュから返す
      final cachedUser = prefs.getString(PrefKeys.loggedInUser);
      if (cachedUser != null) {
        return User.fromJson(jsonDecode(cachedUser));
      }

      // キャッシュがなければfirestoreから取得してキャッシュ作成
      final user = await getById(userId);
      if (user == null) throw NotFoundMeException();
      prefs.setString(PrefKeys.loggedInUser, jsonEncode(user));

      return user;
    } catch (e) {
      rethrow;
    }
  }
}

final userRepositoryProvider = Provider<UserRepositoryInterface>(
  (ref) => UserRepository(
    ref,
    authService: ref.read(authServiceProvider),
  ),
);
