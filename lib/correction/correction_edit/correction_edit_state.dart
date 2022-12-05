import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/model/post.dart';

part 'correction_edit_state.freezed.dart';

@freezed
class CorrectionEditState with _$CorrectionEditState {
  const factory CorrectionEditState({
    @Default(Post()) post,
    @Default("") String editedText,
    @Default("") String comment,
  }) = _CorrectionEditState;
}
