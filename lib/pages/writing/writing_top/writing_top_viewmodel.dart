import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_state.dart';

class WritingTopViewModel extends StateNotifier<AsyncValue<WritingTopState>> {
  WritingTopViewModel() : super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    sleep(
      const Duration(seconds: 2),
    );
    state = const AsyncData(
      WritingTopState(
        correctionCount: 10,
        reviewPoint: 15,
        creditCount: 10,
      ),
    );
  }
}

final WritingTopViewModelProvider = StateNotifierProvider.autoDispose<
    WritingTopViewModel, AsyncValue<WritingTopState>>(
  (ref) => WritingTopViewModel(),
);
