import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/post_status.dart';

class PostStatusConverter implements JsonConverter<PostStatus, String> {
  const PostStatusConverter();

  @override
  PostStatus fromJson(String json) {
    return PostStatusExtension.fromString(json);
  }

  @override
  String toJson(PostStatus status) {
    return PostStatusExtension.statusToString(status);
  }
}
