// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correction_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CorrectionMessage _$$_CorrectionMessageFromJson(Map<String, dynamic> json) =>
    _$_CorrectionMessage(
      content: json['content'] as String,
      senderId: json['senderId'] as String,
      sentAt: const DateTimeConverter().fromJson(json['sentAt'] as Timestamp),
    );

Map<String, dynamic> _$$_CorrectionMessageToJson(
        _$_CorrectionMessage instance) =>
    <String, dynamic>{
      'content': instance.content,
      'senderId': instance.senderId,
      'sentAt': const DateTimeConverter().toJson(instance.sentAt),
    };
