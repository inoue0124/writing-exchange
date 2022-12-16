import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/repository/question_repository.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/question/question_top/question_list/question_list_state.dart';

class QuestionListViewModel
    extends StateNotifier<AsyncValue<QuestionListState>> {
  QuestionListViewModel({
    required QuestionRepositoryInterface questionRepository,
    required UserRepositoryInterface userRepository,
    required Language language,
  })  : _questionRepository = questionRepository,
        _userRepository = userRepository,
        _language = language,
        super(const AsyncLoading()) {
    fetch();
  }

  final QuestionRepositoryInterface _questionRepository;
  final UserRepositoryInterface _userRepository;
  final Language _language;

  Future<void> fetch() async {
    state = const AsyncLoading();
    final questions = await _questionRepository.getListByLanguage(_language);
    state = AsyncData(
      QuestionListState(questions: questions),
    );
  }
}

final questionListViewModelProvider = StateNotifierProviderFamily<
    QuestionListViewModel, AsyncValue<QuestionListState>, Language>(
  (ref, language) => QuestionListViewModel(
    questionRepository: ref.watch(questionRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
    language: language,
  ),
);
