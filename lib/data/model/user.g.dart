// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      email: json['email'] as String,
      status: const UserStatusConverter().fromJson(json['status'] as String),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as Timestamp),
      postCount: json['postCount'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'status': const UserStatusConverter().toJson(instance.status),
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'postCount': instance.postCount,
    };
