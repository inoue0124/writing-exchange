import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_state.dart';

class WritingTopViewModel extends StateNotifier<AsyncValue<WritingTopState>> {
  WritingTopViewModel({
    required PostRepositoryInterface postRepository,
    required UserRepositoryInterface userRepository,
  })  : _postRepository = postRepository,
        _userRepository = userRepository,
        super(const AsyncLoading()) {
    fetch();
  }

  final PostRepositoryInterface _postRepository;
  final UserRepositoryInterface _userRepository;

  Future<void> fetch() async {
    state = const AsyncLoading();
    final user = await _userRepository.getMe();
    final writings = await _postRepository.getMyList(userId: user.userId);
    state = AsyncData(
      WritingTopState(
        writings: writings,
        user: user,
      ),
    );
  }
}

final writingTopViewModelProvider =
    StateNotifierProvider<WritingTopViewModel, AsyncValue<WritingTopState>>(
  (ref) => WritingTopViewModel(
    postRepository: ref.watch(postRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  ),
);
