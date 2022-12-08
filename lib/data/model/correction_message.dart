import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'correction_message.freezed.dart';
part 'correction_message.g.dart';

@freezed
class CorrectionMessage with _$CorrectionMessage {
  const CorrectionMessage._();
  const factory CorrectionMessage({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'senderId') required String senderId,
    @JsonKey(name: 'sentAt') @DateTimeConverter() required DateTime sentAt,
  }) = _CorrectionMessage;

  factory CorrectionMessage.fromJson(Map<String, dynamic> json) =>
      _$CorrectionMessageFromJson(json);
}
