import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_state.dart';

class CreateWritingViewModel extends StateNotifier<CreateWritingState> {
  CreateWritingViewModel({
    required PostRepositoryInterface postRepository,
    required AuthServiceInterface authService,
    Language? selectedLanguage,
  })  : _postRepository = postRepository,
        _authService = authService,
        super(const CreateWritingState()) {
    if (selectedLanguage != null) {
      state = state.copyWith(language: selectedLanguage);
    }
  }

  final PostRepositoryInterface _postRepository;
  final AuthServiceInterface _authService;

  Future<void> postWriting() async {
    state = state.copyWith(isLoading: true);
    final userId = await _authService.getUserId();
    final post = Post(
      title: state.title,
      content: state.content,
      audioUrl: state.audioUrl,
      imageUrls: state.imageUrls,
      userId: userId,
      language: state.language!,
      status: PostStatus.active,
    );
    await _postRepository.upsert(post);
  }

  Future<void> saveAsDraft() async {
    state = state.copyWith(isLoading: true);
    final userId = await _authService.getUserId();
    final post = Post(
      title: state.title,
      content: state.content,
      audioUrl: state.audioUrl,
      imageUrls: state.imageUrls,
      userId: userId,
      language: state.language!,
      status: PostStatus.draft,
    );
    await _postRepository.upsert(post);
  }

  void onChangeLanguage(Language language) {
    state = state.copyWith(language: language);
  }

  void onChangeTitle(String value) {
    state = state.copyWith(title: value);
  }

  void onChangeContent(String value) {
    state = state.copyWith(content: value);
  }
}

final createWritingViewModelProvider = AutoDisposeStateNotifierProviderFamily<
    CreateWritingViewModel, CreateWritingState, Language?>(
  (ref, selectedLanguage) => CreateWritingViewModel(
    postRepository: ref.watch(postRepositoryProvider),
    authService: ref.watch(authServiceProvider),
    selectedLanguage: selectedLanguage,
  ),
);
