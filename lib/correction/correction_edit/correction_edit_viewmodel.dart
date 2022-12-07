import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/correction/correction_Edit/correction_edit_state.dart';
import 'package:writing_exchange/model/post.dart';
import 'package:writing_exchange/model/user.dart';

class CorrectionEditViewModel
    extends StateNotifier<AsyncValue<CorrectionEditState>> {
  CorrectionEditViewModel() : super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    // state = AsyncData(
    //   CorrectionEditState(
    //     post: post,
    //     editedText: post.body,
    //   ),
    // );
  }
}

final correctionEditViewModelProvider = StateNotifierProvider.autoDispose<
    CorrectionEditViewModel, AsyncValue<CorrectionEditState>>(
  (ref) => CorrectionEditViewModel(),
);
