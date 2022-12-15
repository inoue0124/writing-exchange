import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';

part 'correction_ticket.freezed.dart';
part 'correction_ticket.g.dart';

@freezed
class CorrectionTicket with _$CorrectionTicket {
  const CorrectionTicket._();
  const factory CorrectionTicket({
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'count') @Default(0) int count,
    @JsonKey(name: 'updatedAt') @DateTimeConverter() DateTime? updatedAt,
  }) = _CorrectionTicket;

  factory CorrectionTicket.fromJson(Map<String, dynamic> json) =>
      _$CorrectionTicketFromJson(json);
}
