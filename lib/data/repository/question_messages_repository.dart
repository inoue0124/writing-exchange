import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/question_message.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class QuestionMessageRepositoryInterface {
  Future<void> upsert(String correctionId, QuestionMessage message);
  Future<List<QuestionMessage>> getListByCorrectionId(String correctionId);
  Future<void> deleteById(String correctionId, String messageId);
}

class QuestionMessageRepository implements QuestionMessageRepositoryInterface {
  final Reader _reader;
  const QuestionMessageRepository(this._reader);

  @override
  Future<void> upsert(String correctionId, QuestionMessage message) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .questionMessagesRef(correctionId)
          .add(message.toJson());
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<QuestionMessage>> getListByCorrectionId(
      String correctionId) async {
    try {
      final snaps = await _reader(firebaseFirestoreProvider)
          .questionMessagesRef(correctionId)
          .get();
      return snaps.docs
          .map((doc) => QuestionMessage.fromJson(doc.data()))
          .toList();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String correctionId, String messageId) async {
    try {
      await _reader(firebaseFirestoreProvider)
          .questionMessagesRef(correctionId)
          .doc(messageId)
          .delete();
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final messageRepositoryProvider = Provider<QuestionMessageRepositoryInterface>(
  (ref) => QuestionMessageRepository(ref.read),
);
