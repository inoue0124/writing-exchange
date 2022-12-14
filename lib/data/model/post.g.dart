// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String,
      title: json['title'] as String,
      content:
          const NewLineStringConverter().fromJson(json['content'] as String),
      audioUrl: json['audioUrl'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      status: const PostStatusConverter().fromJson(json['status'] as String),
      userId: json['userId'] as String?,
      language: const LanguageConverter().fromJson(json['language'] as String),
      correctionCount: json['correctionCount'] as int? ?? 0,
      postedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['postedAt'], const DateTimeConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': const NewLineStringConverter().toJson(instance.content),
      'audioUrl': instance.audioUrl,
      'imageUrls': instance.imageUrls,
      'status': const PostStatusConverter().toJson(instance.status),
      'userId': instance.userId,
      'language': const LanguageConverter().toJson(instance.language),
      'correctionCount': instance.correctionCount,
      'postedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.postedAt, const DateTimeConverter().toJson),
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
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
