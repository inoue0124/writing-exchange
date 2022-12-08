import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/providers.dart';
import 'package:writing_exchange/data/model/question.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class QuestionRepositoryInterface {
  Future<void> upsert(Question question);
  Future<Question?> getById(String questionId);
  Future<void> deleteById(String questionId);
}

class QuestionRepository implements QuestionRepositoryInterface {
  final Ref _ref;
  const QuestionRepository(this._ref);

  @override
  Future<void> upsert(Question question) async {
    try {
      await _ref
          .read(firebaseFirestoreProvider)
          .questionsRef()
          .add(question.toJson());
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Question?> getById(String questionId) async {
    try {
      final snap = await _ref
          .read(firebaseFirestoreProvider)
          .questionsRef()
          .doc(questionId)
          .get();
      final data = snap.data();
      if (data == null) {
        return null;
      }
      final question = Question.fromJson(data);
      return question;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteById(String questionId) async {
    try {
      await _ref
          .read(firebaseFirestoreProvider)
          .questionsRef()
          .doc(questionId)
          .delete();
      return;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final questionRepositoryProvider = Provider<QuestionRepositoryInterface>(
  (ref) => QuestionRepository(ref),
);
