import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/language_converter.dart';

part 'question_message.freezed.dart';
part 'question_message.g.dart';

@freezed
class QuestionMessage with _$QuestionMessage {
  const QuestionMessage._();
  const factory QuestionMessage({
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'question_messages')
        required List<QuestionMessage> question_messages,
    @JsonKey(name: 'question_messageedAt')
    @DateTimeConverter()
        required DateTime question_messageedAt,
  }) = _QuestionMessage;

  factory QuestionMessage.fromJson(Map<String, dynamic> json) =>
      _$QuestionMessageFromJson(json);
}
