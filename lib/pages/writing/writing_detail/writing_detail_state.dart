import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post.dart';

part 'writing_detail_state.freezed.dart';

@freezed
class WritingDetailState with _$WritingDetailState {
  const factory WritingDetailState({
    @Default(null) Post? post,
  }) = _WritingDetailState;
}
