import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/country_converter.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/language_converter.dart';
import 'package:writing_exchange/data/model/user_status.dart';
import 'package:writing_exchange/data/model/user_status_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'nationality')
    @CountryCodeConverter()
        required CountryCode nationality,
    @JsonKey(name: 'nativeLanguages')
    @LanguageListConverter()
        required List<Language> nativeLanguages,
    @JsonKey(name: 'targetLanguages')
    @LanguageListConverter()
        required List<Language> targetLanguages,
    @JsonKey(name: 'reviewValue') required double reviewValue,
    @JsonKey(name: 'correctionCount') required int correctionCount,
    @JsonKey(name: 'postCount') required int postCount,
    @JsonKey(name: 'status') @UserStatusConverter() required UserStatus status,
    @JsonKey(name: 'createdAt')
    @DateTimeConverter()
        required DateTime createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
