// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionMessage _$$_QuestionMessageFromJson(Map<String, dynamic> json) =>
    _$_QuestionMessage(
      userId: json['userId'] as String,
      content: json['content'] as String,
      question_messages: (json['question_messages'] as List<dynamic>)
          .map((e) => QuestionMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      question_messageedAt: const DateTimeConverter()
          .fromJson(json['question_messageedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_QuestionMessageToJson(_$_QuestionMessage instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'content': instance.content,
      'question_messages': instance.question_messages,
      'question_messageedAt':
          const DateTimeConverter().toJson(instance.question_messageedAt),
    };
