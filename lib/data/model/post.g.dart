// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      title: json['title'] as String,
      content: json['content'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      correctionCount: json['correctionCount'] as int,
      postedAt:
          const DateTimeConverter().fromJson(json['postedAt'] as Timestamp),
      audioUrl: json['audioUrl'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      status: const PostStatusConverter().fromJson(json['status'] as String),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'correctionCount': instance.correctionCount,
      'postedAt': const DateTimeConverter().toJson(instance.postedAt),
      'audioUrl': instance.audioUrl,
      'imageUrls': instance.imageUrls,
      'status': const PostStatusConverter().toJson(instance.status),
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
