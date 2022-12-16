// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Correction _$$_CorrectionFromJson(Map<String, dynamic> json) =>
    _$_Correction(
      id: json['id'] as String,
      originalTexts: (json['originalTexts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctedTexts: (json['correctedTexts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      comment: json['comment'] as String,
      audioUrl: json['audioUrl'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => CorrectionMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: const ReviewConverter().fromJson(json['review'] as String),
      vocabularyScore: json['vocabularyScore'] as int,
      grammarScore: json['grammarScore'] as int,
      fluencyScore: json['fluencyScore'] as int,
      pronunciationScore: json['pronunciationScore'] as int,
      correctedUserId: json['correctedUserId'] as String?,
      correctedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['correctedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_CorrectionToJson(_$_Correction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalTexts': instance.originalTexts,
      'correctedTexts': instance.correctedTexts,
      'comment': instance.comment,
      'audioUrl': instance.audioUrl,
      'messages': instance.messages,
      'review': const ReviewConverter().toJson(instance.review),
      'vocabularyScore': instance.vocabularyScore,
      'grammarScore': instance.grammarScore,
      'fluencyScore': instance.fluencyScore,
      'pronunciationScore': instance.pronunciationScore,
      'correctedUserId': instance.correctedUserId,
      'correctedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.correctedAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
