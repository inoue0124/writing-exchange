import 'package:freezed_annotation/freezed_annotation.dart';

class NewLineStringConverter implements JsonConverter<String, String> {
  const NewLineStringConverter();

  @override
  String fromJson(String json) {
    // firebaseからのレスポンスでは、\に対してエスケープ文字が付いて\\nとして返ってくるため変換する。
    return json.replaceAll('\\n', '\n');
  }

  @override
  String toJson(String text) {
    return text;
  }
}
