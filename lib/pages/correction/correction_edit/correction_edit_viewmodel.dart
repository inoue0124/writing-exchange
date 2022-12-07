import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_state.dart';

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
