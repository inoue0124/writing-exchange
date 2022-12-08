import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_state.dart';

class CreateWritingViewModel extends StateNotifier<CreateWritingState> {
  CreateWritingViewModel({
    required PostRepositoryInterface postRepository,
  })  : _postRepository = postRepository,
        super(const CreateWritingState());

  final PostRepositoryInterface _postRepository;

  Future<void> postWriting({required Function() onSuccess}) async {
    final post = Post(
      title: state.title,
      content: state.content,
      audioUrl: state.audioUrl,
      imageUrls: state.imageUrls,
      userId: "stateValue.userId",
      status: PostStatus.active,
    );
    await _postRepository.upsert(post);
    onSuccess();
  }

  Future<void> saveAsDraft({required Function() onSuccess}) async {
    final post = Post(
      title: state.title,
      content: state.content,
      audioUrl: state.audioUrl,
      imageUrls: state.imageUrls,
      userId: "stateValue.userId",
      status: PostStatus.draft,
    );
    await _postRepository.upsert(post);
    onSuccess();
  }

  void onChangeTitle(String value) {
    state = state.copyWith(title: value);
  }

  void onChangeContent(String value) {
    state = state.copyWith(content: value);
  }
}

final createWritingViewModelProvider = StateNotifierProvider.autoDispose<
    CreateWritingViewModel, CreateWritingState>(
  (ref) => CreateWritingViewModel(
    postRepository: ref.watch(postRepositoryProvider),
  ),
);
