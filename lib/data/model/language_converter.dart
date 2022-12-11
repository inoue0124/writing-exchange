import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';

class LanguageConverter implements JsonConverter<Language, String> {
  const LanguageConverter();

  @override
  Language fromJson(String json) {
    return Language.fromIsoCode(json);
  }

  @override
  String toJson(Language language) {
    return language.isoCode;
  }
}
