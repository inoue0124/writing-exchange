import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/app_dialog.dart';
import 'package:writing_exchange/data/repository/correction_ticket_repository.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_state.dart';

class WritingTopViewModel extends StateNotifier<AsyncValue<WritingTopState>> {
  WritingTopViewModel({
    required UserRepositoryInterface userRepository,
    required PostRepositoryInterface postRepository,
    required CorrectionTicketRepositoryInterface correctionTicketRepository,
  })  : _userRepository = userRepository,
        _postRepository = postRepository,
        _correctionTicketRepository = correctionTicketRepository,
        super(const AsyncLoading()) {
    initialFetch();
  }

  final UserRepositoryInterface _userRepository;
  final PostRepositoryInterface _postRepository;
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
      final needCorrectionPost = await _postRepository.getCorrectionNeeded(
        user.nativeLanguages.first,
      ); // TODO: 母語が複数ある時を考慮する

      final stateValue = WritingTopState(
        user: user,
        selectedLanguage: user.targetLanguages.first,
        needCorrectionPost: needCorrectionPost,
      );
      state = AsyncData(stateValue);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}

final writingTopViewModelProvider =
    StateNotifierProvider<WritingTopViewModel, AsyncValue<WritingTopState>>(
  (ref) => WritingTopViewModel(
    userRepository: ref.watch(userRepositoryProvider),
    postRepository: ref.watch(postRepositoryProvider),
    correctionTicketRepository: ref.watch(correctionTicketRepositoryProvider),
  ),
);
