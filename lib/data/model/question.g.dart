// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      targetLanguage:
          const LanguageConverter().fromJson(json['targetLanguage'] as String),
      answerLanguage:
          const LanguageConverter().fromJson(json['answerLanguage'] as String),
      phraseA: json['phraseA'] as String,
      phraseB: json['phraseB'] as String?,
      questionedAt:
          const DateTimeConverter().fromJson(json['questionedAt'] as Timestamp),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'targetLanguage':
          const LanguageConverter().toJson(instance.targetLanguage),
      'answerLanguage':
          const LanguageConverter().toJson(instance.answerLanguage),
      'phraseA': instance.phraseA,
      'phraseB': instance.phraseB,
      'questionedAt': const DateTimeConverter().toJson(instance.questionedAt),
      'userId': instance.userId,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.howToSay: 'howToSay',
  QuestionType.difference: 'difference',
  QuestionType.unknown: 'unknown',
};
