// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_post _$$_postFromJson(Map<String, dynamic> json) => _$_post(
      name: json['name'] as String,
      email: json['email'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as Timestamp),
      postCount: json['postCount'] as int,
    );

Map<String, dynamic> _$$_postToJson(_$_post instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'postCount': instance.postCount,
    };
