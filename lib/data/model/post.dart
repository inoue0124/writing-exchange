import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/datetime_converter.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class post with _$post {
  const post._();
  const factory post({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'createdAt')
    @DateTimeConverter()
        required DateTime createdAt,
    @JsonKey(name: 'postCount') required int postCount,
  }) = _post;

  factory post.fromJson(Map<String, dynamic> json) => _$postFromJson(json);
}
