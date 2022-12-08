// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Correction _$$_CorrectionFromJson(Map<String, dynamic> json) =>
    _$_Correction(
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
      crrectedUser: User.fromJson(json['crrectedUser'] as Map<String, dynamic>),
      correctedAt:
          const DateTimeConverter().fromJson(json['correctedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_CorrectionToJson(_$_Correction instance) =>
    <String, dynamic>{
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
      'crrectedUser': instance.crrectedUser,
      'correctedAt': const DateTimeConverter().toJson(instance.correctedAt),
    };
