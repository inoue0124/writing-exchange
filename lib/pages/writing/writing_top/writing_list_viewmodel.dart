import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_list_state.dart';

class WritingListViewModel extends StateNotifier<AsyncValue<WritingListState>> {
  WritingListViewModel({
    required PostRepositoryInterface postRepository,
    required UserRepositoryInterface userRepository,
    required Language language,
  })  : _postRepository = postRepository,
        _userRepository = userRepository,
        _language = language,
        super(const AsyncLoading()) {
    fetch();
  }

  final PostRepositoryInterface _postRepository;
  final UserRepositoryInterface _userRepository;
  final Language _language;

  Future<void> fetch() async {
    state = const AsyncLoading();
    final user = await _userRepository.getMe();
    final writings = await _postRepository.getMyList(
      userId: user.userId,
      targetLanguage: _language,
    );
    state = AsyncData(
      WritingListState(
        writings: writings,
      ),
    );

    print(
      await _postRepository.getCorrectionNeeded(Language.fromIsoCode('ja')),
    );
  }
}

final writingListViewModelProvider = StateNotifierProviderFamily<
    WritingListViewModel, AsyncValue<WritingListState>, Language>(
  (ref, language) => WritingListViewModel(
    postRepository: ref.watch(postRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
    language: language,
  ),
);