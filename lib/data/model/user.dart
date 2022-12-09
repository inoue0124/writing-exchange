import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
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
  @HiveType(typeId: 1, adapterName: 'UserAdapter')
  const User._();
  const factory User({
    @JsonKey(name: 'userId') @HiveField(0) String? userId,
    @JsonKey(name: 'name') @HiveField(1) required String name,
    @JsonKey(name: 'iconUrl') @HiveField(2) required String iconUrl,
    @JsonKey(name: 'nationality')
    @HiveField(3)
    @CountryCodeConverter()
        required CountryCode nationality,
    @JsonKey(name: 'nativeLanguages')
    @HiveField(4)
    @LanguageListConverter()
        required List<Language> nativeLanguages,
    @JsonKey(name: 'targetLanguages')
    @HiveField(5)
    @LanguageListConverter()
        required List<Language> targetLanguages,
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
