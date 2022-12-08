// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      nationality:
          const CountryCodeConverter().fromJson(json['nationality'] as String),
      nativeLanguages: const LanguageListConverter()
          .fromJson(json['nativeLanguages'] as List<String>),
      targetLanguages: const LanguageListConverter()
          .fromJson(json['targetLanguages'] as List<String>),
      reviewValue: (json['reviewValue'] as num).toDouble(),
      correctionCount: json['correctionCount'] as int,
      postCount: json['postCount'] as int,
      status: const UserStatusConverter().fromJson(json['status'] as String),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'nationality': const CountryCodeConverter().toJson(instance.nationality),
      'nativeLanguages':
          const LanguageListConverter().toJson(instance.nativeLanguages),
      'targetLanguages':
          const LanguageListConverter().toJson(instance.targetLanguages),
      'reviewValue': instance.reviewValue,
      'correctionCount': instance.correctionCount,
      'postCount': instance.postCount,
      'status': const UserStatusConverter().toJson(instance.status),
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
