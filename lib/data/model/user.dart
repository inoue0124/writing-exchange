import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/user_status.dart';
import 'package:writing_exchange/data/model/user_status_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'status') @UserStatusConverter() required UserStatus status,
    @JsonKey(name: 'createdAt')
    @DateTimeConverter()
        required DateTime createdAt,
    @JsonKey(name: 'postCount') required int postCount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
