import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/question_type.dart';

class QuestionTypeConverter implements JsonConverter<QuestionType, String> {
  const QuestionTypeConverter();

  @override
  QuestionType fromJson(String json) {
    return QuestionTypeExtension.fromString(json);
  }

  @override
  String toJson(QuestionType status) {
    return QuestionTypeExtension.statusToString(status);
  }
}
