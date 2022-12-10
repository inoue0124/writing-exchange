import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/question/question_top/question_top_state.dart';

class QuestionTopViewModel extends StateNotifier<AsyncValue<QuestionTopState>> {
  QuestionTopViewModel() : super(const AsyncLoading()) {
    _fetchInitialData();
  }

  Future<void> _fetchInitialData() async {
    state = const AsyncLoading();
  }
}

final questionTopViewModelProvider = StateNotifierProvider.autoDispose<
    QuestionTopViewModel, AsyncValue<QuestionTopState>>(
  (ref) => QuestionTopViewModel(),
);
