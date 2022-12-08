import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/correction_message.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class CorrectionMessageRepositoryInterface {
  Future<void> upsert(String correctionId, CorrectionMessage message);
  Future<List<CorrectionMessage>> getListByCorrectionId(String correctionId);
  Future<void> deleteById(String correctionId, String messageId);
}

class CorrectionMessageRepository
    implements CorrectionMessageRepositoryInterface {
  final Reader _reader;
  const CorrectionMessageRepository(this._reader);

  @override
  Future<void> upsert(String correctionId, CorrectionMessage message) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .correctionMessagesRef(correctionId)
          .add(message.toJson());
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<CorrectionMessage>> getListByCorrectionId(
      String correctionId) async {
    try {
      final snaps = await _reader(firebaseFirestoreProvider)
          .correctionMessagesRef(correctionId)
          .get();
      return snaps.docs
          .map((doc) => CorrectionMessage.fromJson(doc.data()))
          .toList();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String correctionId, String messageId) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .correctionMessagesRef(correctionId)
          .doc(messageId)
          .delete();
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final messageRepositoryProvider =
    Provider<CorrectionMessageRepositoryInterface>(
  (ref) => CorrectionMessageRepository(ref.read),
);
