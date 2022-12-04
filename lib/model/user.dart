import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default("") String name,
    @Default("") String imageUrl,
  }) = _User;
}
