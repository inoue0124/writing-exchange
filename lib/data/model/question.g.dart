// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      targetLanguage:
          const LanguageConverter().fromJson(json['targetLanguage'] as String),
      answerLanguage:
          const LanguageConverter().fromJson(json['answerLanguage'] as String),
      phraseA: json['phraseA'] as String,
      phraseB: json['phraseB'] as String?,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => QuestionMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionedAt:
          const DateTimeConverter().fromJson(json['questionedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'targetLanguage':
          const LanguageConverter().toJson(instance.targetLanguage),
      'answerLanguage':
          const LanguageConverter().toJson(instance.answerLanguage),
      'phraseA': instance.phraseA,
      'phraseB': instance.phraseB,
      'messages': instance.messages,
      'questionedAt': const DateTimeConverter().toJson(instance.questionedAt),
    };

const _$QuestionTypeEnumMap = {
  QuestionType.howToSay: 'howToSay',
  QuestionType.difference: 'difference',
  QuestionType.unknown: 'unknown',
};
