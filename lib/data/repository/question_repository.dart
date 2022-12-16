import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/question.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';

abstract class QuestionRepositoryInterface {
  Future<void> upsert(Question question);
  Future<Question?> getById(String questionId);
  Future<List<Question>> getListByLanguage(Language targetLanguage);
  Future<void> deleteById(String questionId);
}

class QuestionRepository implements QuestionRepositoryInterface {
  final Ref _ref;
  const QuestionRepository(
    this._ref, {
    required UserRepositoryInterface userRepository,
  }) : _userRepository = userRepository;

  final UserRepositoryInterface _userRepository;

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

  @override
  Future<List<Question>> getListByLanguage(Language targetLanguage) async {
    try {
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .questionsRef()
          .where('targetLanguage', isEqualTo: targetLanguage.isoCode)
          .orderBy('questionedAt')
          .get();
      final questions =
          snaps.docs.map((doc) => Question.fromJson(doc.data())).toList();
      return Future.wait(
        questions.map((question) async {
          final user = await _userRepository.getById(question.userId!);
          question = question.copyWith(user: user);
          return question;
        }).toList(),
      );
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final questionRepositoryProvider = Provider<QuestionRepositoryInterface>(
  (ref) => QuestionRepository(
    ref,
    userRepository: ref.read(userRepositoryProvider),
  ),
);
