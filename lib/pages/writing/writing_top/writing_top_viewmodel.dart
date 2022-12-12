import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_state.dart';

class WritingTopViewModel extends StateNotifier<AsyncValue<WritingTopState>> {
  WritingTopViewModel({
    required UserRepositoryInterface userRepository,
  })  : _userRepository = userRepository,
        super(const AsyncLoading()) {
    initialFetch();
  }

  final UserRepositoryInterface _userRepository;

  void onTapTab(int index) {
    var stateValue = state.value;
    if (stateValue != null) {
      stateValue = stateValue.copyWith(
        selectedLanguage: stateValue.user.targetLanguages[index],
      );
      state = AsyncData(stateValue);
    }
  }

  Future<void> initialFetch() async {
    state = const AsyncLoading();
    try {
      final user = await _userRepository.getMe();

      final stateValue = WritingTopState(
        user: user,
        selectedLanguage: user.targetLanguages.first,
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
  ),
);
