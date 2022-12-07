import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/user_status.dart';

class UserStatusConverter implements JsonConverter<UserStatus, String> {
  const UserStatusConverter();

  @override
  UserStatus fromJson(String json) {
    return UserStatusExtension.fromString(json);
  }

  @override
  String toJson(UserStatus status) {
    return UserStatusExtension.statusToString(status);
  }
}
