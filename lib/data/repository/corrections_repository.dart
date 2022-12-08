import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/correction.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class CorrectionRepositoryInterface {
  Future<void> upsert(Correction correction);
  Future<Correction?> getById(String correctionId);
  Future<void> deleteById(String correctionId);
}

class CorrectionRepository implements CorrectionRepositoryInterface {
  final Reader _reader;
  const CorrectionRepository(this._reader);

  @override
  Future<void> upsert(Correction correction) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .correctionsRef()
          .add(correction.toJson());
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Correction?> getById(String correctionId) async {
    try {
      final snap = await _reader(firebaseFirestoreProvider)
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
      await _reader(firebaseFirestoreProvider)
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
  (ref) => CorrectionRepository(ref.read),
);
