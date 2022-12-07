import 'package:freezed_annotation/freezed_annotation.dart';

part 'writing_home_state.freezed.dart';

@freezed
class WritingHomeState with _$WritingHomeState {
  const factory WritingHomeState({
    @Default(0) int correctionCount,
    @Default(0) int reviewPoint,
    @Default(0) int creditCount,
  }) = _WritingHomeState;
}
