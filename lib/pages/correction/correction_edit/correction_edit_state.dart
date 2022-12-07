import 'package:freezed_annotation/freezed_annotation.dart';

part 'correction_edit_state.freezed.dart';

@freezed
class CorrectionEditState with _$CorrectionEditState {
  const factory CorrectionEditState({
    @Default("") String editedText,
    @Default("") String comment,
  }) = _CorrectionEditState;
}
