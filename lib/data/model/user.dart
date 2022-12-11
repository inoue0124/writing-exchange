import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
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
    @JsonKey(name: 'userId') @Default("") String userId,
    @JsonKey(name: 'name') @Default("UserName") String name,
    @JsonKey(name: 'iconUrl') String? iconUrl,
    @JsonKey(name: 'country') @CountryCodeConverter() Country? country,
    @JsonKey(name: 'nativeLanguages')
    @LanguageConverter()
    @Default([])
        List<Language> nativeLanguages,
    @JsonKey(name: 'targetLanguages')
    @LanguageConverter()
    @Default([])
        List<Language> targetLanguages,
    @JsonKey(name: 'reviewValue') @Default(0) double reviewValue,
    @JsonKey(name: 'correctionCount') @Default(0) int correctionCount,
    @JsonKey(name: 'postCount') @Default(0) int postCount,
    @JsonKey(name: 'status')
    @UserStatusConverter()
    @Default(UserStatus.active)
        UserStatus status,
    @JsonKey(name: 'createdAt') @DateTimeConverter() DateTime? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
