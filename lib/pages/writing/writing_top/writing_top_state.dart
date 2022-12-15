import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/post.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'writing_top_state.freezed.dart';

@freezed
class WritingTopState with _$WritingTopState {
  const factory WritingTopState({
    @Default(User()) User user,
    @Default(null) Language? selectedLanguage,
    @Default(null) Post? needCorrectionPost,
    @Default(0) int correctionTicketCount,
  }) = _WritingTopState;
}
