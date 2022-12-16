import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/pages/writing/writing_detail/writing_detail_state.dart';

class WritingDetailViewModel
    extends StateNotifier<AsyncValue<WritingDetailState>> {
  WritingDetailViewModel({
    required PostRepositoryInterface postRepository,
    required String postId,
  })  : _postRepository = postRepository,
        super(const AsyncLoading()) {
    fetch(postId);
  }

  final PostRepositoryInterface _postRepository;

  Future<void> fetch(String postId) async {
    state = const AsyncLoading();
    try {
      final post = await _postRepository.getById(postId);

      final stateValue = WritingDetailState(post: post);
      state = AsyncData(stateValue);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}

final writingDetailViewModelProvider = AutoDisposeStateNotifierProviderFamily<
    WritingDetailViewModel, AsyncValue<WritingDetailState>, String>(
  (ref, postId) => WritingDetailViewModel(
    postRepository: ref.watch(postRepositoryProvider),
    postId: postId,
  ),
);
