import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post.dart';

part 'writing_top_state.freezed.dart';

@freezed
class WritingTopState with _$WritingTopState {
  const factory WritingTopState({
    @Default([]) List<Post> writings,
  }) = _WritingTopState;
}
