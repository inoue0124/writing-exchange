import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_state.dart';

class WritingTopViewModel extends StateNotifier<AsyncValue<WritingTopState>> {
  WritingTopViewModel({
    required PostRepositoryInterface postRepository,
  })  : _postRepository = postRepository,
        super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  final PostRepositoryInterface _postRepository;

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    final writings = await _postRepository.getListByUserId("userId");
    state = AsyncData(
      WritingTopState(writings: writings),
    );
  }
}

final WritingTopViewModelProvider = StateNotifierProvider.autoDispose<
    WritingTopViewModel, AsyncValue<WritingTopState>>(
  (ref) => WritingTopViewModel(
    postRepository: ref.watch(postRepositoryProvider),
  ),
);
