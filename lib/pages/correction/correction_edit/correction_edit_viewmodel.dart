import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/model/correction.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/review.dart';
import 'package:writing_exchange/data/repository/corrections_repository.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_state.dart';

class CorrectionEditViewModel
    extends StateNotifier<AsyncValue<CorrectionEditState>> {
  CorrectionEditViewModel({
    Post? post,
    required CorrectionRepositoryInterface correctionRepository,
  })  : _correctionRepository = correctionRepository,
        super(const AsyncLoading()) {
    _init(post);
  }

  final CorrectionRepositoryInterface _correctionRepository;

  Future<void> _init(Post? post) async {
    if (post == null) return;
    state = const AsyncLoading();
    state = AsyncData(
      CorrectionEditState(
        post: post,
        originalTexts: const LineSplitter().convert(post.content),
        correctedTexts: const LineSplitter().convert(post.content),
      ),
    );
  }

  Future<void> onChangeText(int index, String text) async {
    state.whenData(
      (value) async {
        state = await AsyncValue.guard(() async {
          final correctedTexts = value.correctedTexts;
          correctedTexts[index] = text;
          return value;
        });
      },
    );
  }

  Future<void> onChangeCommet(String comment) async {
    state.whenData(
      (value) async {
        state = await AsyncValue.guard(() async {
          return value.copyWith(comment: comment);
        });
      },
    );
  }

  Future<void> onSave() async {
    state.whenData(
      (value) async {
        // TODO: 必要なプロパティを揃える
        final correction = Correction(
          id: "",
          originalTexts: value.originalTexts,
          correctedTexts: value.correctedTexts,
          comment: value.comment,
          audioUrl: "",
          messages: [],
          review: Review.good,
          vocabularyScore: 1,
          grammarScore: 1,
          fluencyScore: 1,
          pronunciationScore: 1,
        );
        await _correctionRepository.upsert(correction);
      },
    );
  }
}

final correctionEditViewModelProvider = AutoDisposeStateNotifierProviderFamily<
    CorrectionEditViewModel, AsyncValue<CorrectionEditState>, Post?>(
  (ref, post) => CorrectionEditViewModel(
    post: post,
    correctionRepository: ref.watch(correctionRepositoryProvider),
  ),
);
