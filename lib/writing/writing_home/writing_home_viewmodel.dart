import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/writing/writing_home/writing_home_state.dart';

class WritingHomeViewModel extends StateNotifier<AsyncValue<WritingHomeState>> {
  WritingHomeViewModel() : super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    sleep(
      const Duration(seconds: 2),
    );
    state = const AsyncData(
      WritingHomeState(
        correctionCount: 10,
        reviewPoint: 15,
        creditCount: 10,
      ),
    );
  }
}

final WritingHomeViewModelProvider = StateNotifierProvider.autoDispose<
    WritingHomeViewModel, AsyncValue<WritingHomeState>>(
  (ref) => WritingHomeViewModel(),
);
