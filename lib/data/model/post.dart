import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/model/post_status_converter.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'author') required User author,
    @JsonKey(name: 'correctionCount') required int correctionCount,
    @JsonKey(name: 'postedAt') @DateTimeConverter() required DateTime postedAt,
    @JsonKey(name: 'audioUrl') required String audioUrl,
    @JsonKey(name: 'imageUrls') required List<String> imageUrls,
    @JsonKey(name: 'status') @PostStatusConverter() required PostStatus status,
    @JsonKey(name: 'createdAt')
    @DateTimeConverter()
        required DateTime createdAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
