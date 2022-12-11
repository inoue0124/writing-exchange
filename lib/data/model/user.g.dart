// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String?,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
      country: _$JsonConverterFromJson<String, Country>(
          json['country'], const CountryCodeConverter().fromJson),
      nativeLanguages: const LanguageListConverter()
          .fromJson(json['nativeLanguages'] as List<String>),
      targetLanguages: const LanguageListConverter()
          .fromJson(json['targetLanguages'] as List<String>),
      reviewValue: (json['reviewValue'] as num?)?.toDouble() ?? 0,
      correctionCount: json['correctionCount'] as int? ?? 0,
      postCount: json['postCount'] as int? ?? 0,
      status: json['status'] == null
          ? UserStatus.active
          : const UserStatusConverter().fromJson(json['status'] as String),
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'country': _$JsonConverterToJson<String, Country>(
          instance.country, const CountryCodeConverter().toJson),
      'nativeLanguages':
          const LanguageListConverter().toJson(instance.nativeLanguages),
      'targetLanguages':
          const LanguageListConverter().toJson(instance.targetLanguages),
      'reviewValue': instance.reviewValue,
      'correctionCount': instance.correctionCount,
      'postCount': instance.postCount,
      'status': const UserStatusConverter().toJson(instance.status),
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
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
