import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/app_dialog.dart';
import 'package:writing_exchange/data/repository/correction_ticket_repository.dart';
import 'package:writing_exchange/data/repository/question_repository.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/question/question_top/question_top_state.dart';

class QuestionTopViewModel extends StateNotifier<AsyncValue<QuestionTopState>> {
  QuestionTopViewModel({
    required UserRepositoryInterface userRepository,
    required QuestionRepositoryInterface questionRepository,
    required CorrectionTicketRepositoryInterface correctionTicketRepository,
  })  : _userRepository = userRepository,
        _questionRepository = questionRepository,
        _correctionTicketRepository = correctionTicketRepository,
        super(const AsyncLoading()) {
    initialFetch();
  }

  final UserRepositoryInterface _userRepository;
  final QuestionRepositoryInterface _questionRepository;
  final CorrectionTicketRepositoryInterface _correctionTicketRepository;

  void onTapTab(int index) {
    var stateValue = state.value;
    if (stateValue != null) {
      stateValue = stateValue.copyWith(
        selectedLanguage: stateValue.user.targetLanguages[index],
      );
      state = AsyncData(stateValue);
    }
  }

  Future<void> onPressEditIcon(
    BuildContext context,
    Function onPressGoToCorrection,
    Function onPressCreateNew,
  ) async {
    final correctionTicketCount =
        (await _correctionTicketRepository.getMine()).count;
    if (correctionTicketCount <= 0) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AppDialog(
            title: "添削クレジットが\n不足しています。",
            message: "あなたの母語の学習者の作文を添削してクレジットを増やしましょう！",
            buttons: [
              DialogButton(
                "添削する",
                type: DialogButtonType.main,
                onPressed: () => onPressGoToCorrection(),
              ),
              const DialogButton(
                "キャンセル",
                type: DialogButtonType.sub,
              )
            ],
          );
        },
      );
    } else {
      onPressCreateNew();
    }
  }

  Future<void> initialFetch() async {
    state = const AsyncLoading();
    try {
      final user = await _userRepository.getMe();
      // final needCorrectionQuestion =
      //     await _questionRepository.getCorrectionNeeded(
      //   user.nativeLanguages.first,
      // ); // TODO: 母語が複数ある時を考慮する

      final stateValue = QuestionTopState(
        user: user,
        selectedLanguage: user.targetLanguages.first,
        // needCorrectionQuestion: needCorrectionQuestion,
      );
      state = AsyncData(stateValue);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}

final questionTopViewModelProvider =
    StateNotifierProvider<QuestionTopViewModel, AsyncValue<QuestionTopState>>(
  (ref) => QuestionTopViewModel(
    userRepository: ref.watch(userRepositoryProvider),
    questionRepository: ref.watch(questionRepositoryProvider),
    correctionTicketRepository: ref.watch(correctionTicketRepositoryProvider),
  ),
);
