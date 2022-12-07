import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'correction_home_state.freezed.dart';

@freezed
class CorrectionHomeState with _$CorrectionHomeState {
  const factory CorrectionHomeState({
    @Default(0) int correctionCount,
    @Default(0) int reviewPoint,
    @Default(0) int creditCount,
    User? user,
  }) = _CorrectionHomeState;
}
