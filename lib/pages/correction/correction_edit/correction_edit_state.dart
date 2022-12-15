import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post.dart';

part 'correction_edit_state.freezed.dart';

@freezed
class CorrectionEditState with _$CorrectionEditState {
  const factory CorrectionEditState({
    @Default([]) List<String> correctedTexts,
    @Default([]) List<String> originalTexts,
    @Default("") String comment,
    @Default(null) Post? post,
  }) = _CorrectionEditState;
}
