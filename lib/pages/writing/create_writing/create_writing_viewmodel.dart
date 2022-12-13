import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/app/service/storage_service.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/repository/post_repository.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_state.dart';

class CreateWritingViewModel extends StateNotifier<CreateWritingState> {
  CreateWritingViewModel({
    required PostRepositoryInterface postRepository,
    required StorageServiceInterface storageService,
    Language? selectedLanguage,
  })  : _postRepository = postRepository,
        _storageService = storageService,
        super(const CreateWritingState()) {
    if (selectedLanguage != null) {
      state = state.copyWith(language: selectedLanguage);
    }
  }

  final PostRepositoryInterface _postRepository;
  final StorageServiceInterface _storageService;

  Future<void> postWriting() async {
    state = state.copyWith(isLoading: true);
    await (_uploadImageAndSaveData(PostStatus.active));
  }

  Future<void> saveAsDraft() async {
    state = state.copyWith(isLoading: true);
    await (_uploadImageAndSaveData(PostStatus.draft));
  }

  Future<void> _uploadImageAndSaveData(PostStatus status) async {
    final imageUrls = await Future.wait(
      state.images.map((image) => _storageService.upload(File(image.path))),
    );

    final post = Post(
      title: state.title,
      content: state.content,
      audioUrl: state.audioUrl,
      imageUrls: imageUrls,
      language: state.language!,
      status: status,
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

  void onChangeImage(List<XFile> value) {
    state = state.copyWith(images: value);
  }
}

final createWritingViewModelProvider = AutoDisposeStateNotifierProviderFamily<
    CreateWritingViewModel, CreateWritingState, Language?>(
  (ref, selectedLanguage) => CreateWritingViewModel(
    postRepository: ref.watch(postRepositoryProvider),
    storageService: ref.watch(storageServiceProvider),
    selectedLanguage: selectedLanguage,
  ),
);
