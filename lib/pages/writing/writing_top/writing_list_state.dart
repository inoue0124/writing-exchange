import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'writing_list_state.freezed.dart';

@freezed
class WritingListState with _$WritingListState {
  const factory WritingListState({
    @Default([]) List<Post> writings,
  }) = _WritingListState;
}
