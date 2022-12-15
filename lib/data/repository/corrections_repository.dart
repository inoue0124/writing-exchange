import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/correction.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class CorrectionRepositoryInterface {
  Future<void> upsert(Correction correction);
  Future<Correction?> getById(String correctionId);
  Future<void> deleteById(String correctionId);
}

class CorrectionRepository implements CorrectionRepositoryInterface {
  final Ref _ref;
  const CorrectionRepository(
    this._ref, {
    required AuthServiceInterface authService,
  }) : _authService = authService;
  final AuthServiceInterface _authService;

  @override
  Future<void> upsert(Correction correction) async {
    try {
      final userId = await _authService.getUserId();
      await _ref.read(firebaseFirestoreProvider).correctionsRef().add({
        ...correction.toJson(),
        "correctedAt": FieldValue.serverTimestamp(),
        "correctedUserId": userId,
      });
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Correction?> getById(String correctionId) async {
    try {
      final snap = await _ref
          .read(firebaseFirestoreProvider)
          .correctionsRef()
          .doc(correctionId)
          .get();
      final data = snap.data();
      if (data == null) {
        return null;
      }
      final correction = Correction.fromJson(data);
      return correction;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String correctionId) async {
    try {
      await _ref
          .read(firebaseFirestoreProvider)
          .correctionsRef()
          .doc(correctionId)
          .delete();
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final correctionRepositoryProvider = Provider<CorrectionRepositoryInterface>(
  (ref) => CorrectionRepository(
    ref,
    authService: ref.read(authServiceProvider),
  ),
);
