import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/user.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';

abstract class AuthServiceInterface {
  Future<void> register(User user);
}

class AuthService implements AuthServiceInterface {
  AuthService(
    this._ref, {
    required this.userRepository,
  });

  final Ref _ref;
  final UserRepositoryInterface userRepository;

  @override
  Future<void> register(User user) async {
    try {
      final credential =
          await _ref.read(firebaseAuthProvider).signInAnonymously();
      user = user.copyWith(userId: credential.user?.uid);
      await userRepository.upsert(user);
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final authServiceProvider = Provider<AuthServiceInterface>(
  (ref) => AuthService(
    ref,
    userRepository: ref.watch(userRepositoryProvider),
  ),
);
