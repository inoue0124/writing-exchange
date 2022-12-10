import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/utils/providers.dart';

abstract class AuthServiceInterface {
  Future<void> register();
}

class AuthService implements AuthServiceInterface {
  final Ref _ref;
  AuthService(this._ref);

  @override
  Future<void> register() async {
    try {
      await _ref.read(firebaseAuthProvider).signInAnonymously();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final authServiceProvider = Provider<AuthServiceInterface>(
  (ref) => AuthService(ref),
);
