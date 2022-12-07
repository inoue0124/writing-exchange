import 'package:freezed_annotation/freezed_annotation.dart';

part 'writing_top_state.freezed.dart';

@freezed
class WritingTopState with _$WritingTopState {
  const factory WritingTopState({
    @Default(0) int correctionCount,
    @Default(0) int reviewPoint,
    @Default(0) int creditCount,
  }) = _WritingTopState;
}
