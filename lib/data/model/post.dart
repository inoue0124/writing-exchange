import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';
import 'package:writing_exchange/data/model/language_converter.dart';
import 'package:writing_exchange/data/model/post_status.dart';
import 'package:writing_exchange/data/model/post_status_converter.dart';
import 'package:writing_exchange/data/model/new_line_string_converter.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'content') @NewLineStringConverter() required String content,
    @JsonKey(name: 'audioUrl') required String audioUrl,
    @JsonKey(name: 'imageUrls') required List<String> imageUrls,
    @JsonKey(name: 'status') @PostStatusConverter() required PostStatus status,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'language') @LanguageConverter() required Language language,
    @JsonKey(name: 'correctionCount') @Default(0) int correctionCount,
    @JsonKey(name: 'postedAt') @DateTimeConverter() DateTime? postedAt,
    @JsonKey(name: 'updatedAt') @DateTimeConverter() DateTime? updatedAt,
    @JsonKey(ignore: true) User? user,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
