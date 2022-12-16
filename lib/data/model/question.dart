import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/language_converter.dart';
import 'package:writing_exchange/data/model/question_message.dart';
import 'package:writing_exchange/data/model/question_type.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const Question._();
  const factory Question({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'type') required QuestionType type,
    @JsonKey(name: 'targetLanguage')
    @LanguageConverter()
        required Language targetLanguage,
    @JsonKey(name: 'answerLanguage')
    @LanguageConverter()
        required Language answerLanguage,
    @JsonKey(name: 'phraseA') required String phraseA,
    @JsonKey(name: 'phraseB') String? phraseB,
    // @JsonKey(name: 'messages') required List<QuestionMessage> messages,
    @JsonKey(name: 'questionedAt')
    @DateTimeConverter()
        required DateTime questionedAt,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(ignore: true) User? user,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
