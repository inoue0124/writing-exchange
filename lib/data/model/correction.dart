import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/correction_message.dart';
import 'package:writing_exchange/data/model/review.dart';
import 'package:writing_exchange/data/model/review_converter.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'correction.freezed.dart';
part 'correction.g.dart';

@freezed
class Correction with _$Correction {
  const Correction._();
  const factory Correction({
    @JsonKey(name: 'originalTexts') required List<String> originalTexts,
    @JsonKey(name: 'correctedTexts') required List<String> correctedTexts,
    @JsonKey(name: 'comment') required String comment,
    @JsonKey(name: 'audioUrl') required String audioUrl,
    @JsonKey(name: 'messages') required List<CorrectionMessage> messages,
    @JsonKey(name: 'review') @ReviewConverter() required Review review,
    @JsonKey(name: 'vocabularyScore') required int vocabularyScore,
    @JsonKey(name: 'grammarScore') required int grammarScore,
    @JsonKey(name: 'fluencyScore') required int fluencyScore,
    @JsonKey(name: 'pronunciationScore') required int pronunciationScore,
    @JsonKey(name: 'correctedUserId') String? correctedUserId,
    @JsonKey(name: 'correctedAt') @DateTimeConverter() DateTime? correctedAt,
    @JsonKey(ignore: true) User? correctedUser,
  }) = _Correction;

  factory Correction.fromJson(Map<String, dynamic> json) =>
      _$CorrectionFromJson(json);
}
