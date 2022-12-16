import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/question.dart';

part 'question_list_state.freezed.dart';

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState({
    @Default([]) List<Question> questions,
  }) = _QuestionListState;
}
