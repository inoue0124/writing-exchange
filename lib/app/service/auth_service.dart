import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/user.dart';

abstract class AuthServiceInterface {
  Future<User> register(User user);
  Future<String?> getUserId();
}

class AuthService implements AuthServiceInterface {
  AuthService(this._ref);

  final Ref _ref;

  @override
  Future<User> register(User user) async {
    try {
      final credential =
          await _ref.read(firebaseAuthProvider).signInAnonymously();
      user = user.copyWith(userId: credential.user!.uid);
      return user;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String?> getUserId() async {
    final credential = _ref.read(firebaseAuthProvider).currentUser;
    return credential?.uid;
  }
}

final authServiceProvider = Provider<AuthServiceInterface>(
  (ref) => AuthService(ref),
);
