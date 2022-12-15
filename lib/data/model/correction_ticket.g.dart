// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correction_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CorrectionTicket _$$_CorrectionTicketFromJson(Map<String, dynamic> json) =>
    _$_CorrectionTicket(
      userId: json['userId'] as String,
      count: json['count'] as int? ?? 0,
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_CorrectionTicketToJson(_$_CorrectionTicket instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'count': instance.count,
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
