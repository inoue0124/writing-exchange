import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/data/model/review.dart';

class ReviewConverter implements JsonConverter<Review, String> {
  const ReviewConverter();

  @override
  Review fromJson(String json) {
    return ReviewExtension.fromString(json);
  }

  @override
  String toJson(Review status) {
    return ReviewExtension.statusToString(status);
  }
}
