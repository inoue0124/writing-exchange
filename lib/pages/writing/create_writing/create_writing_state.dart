import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/post_status.dart';

part 'create_writing_state.freezed.dart';

@freezed
class CreateWritingState with _$CreateWritingState {
  const factory CreateWritingState({
    @Default("") String title,
    @Default("") String content,
    @Default([]) List<String> imageUrls,
    @Default("") String audioUrl,
    @Default(PostStatus.active) PostStatus status,
    @Default(false) bool isPostSuccess,
    @Default(false) bool isSaveDraftSuccess,
  }) = _CreateWritingState;
}