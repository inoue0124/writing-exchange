import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/model/user.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default("") String title,
    @Default("") String body,
    @Default([]) List<String> imageUrls,
    @Default(0) int correctedCount,
    @Default(User()) User user,
  }) = _Post;
}
