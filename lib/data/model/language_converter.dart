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

class LanguageListConverter
    implements JsonConverter<List<Language>, List<String>> {
  const LanguageListConverter();
  final languageConverter = const LanguageConverter();

  @override
  List<Language> fromJson(List<String> json) {
    return json.map((e) => languageConverter.fromJson(e)).toList();
  }

  @override
  List<String> toJson(List<Language> language) {
    return language.map((e) => languageConverter.toJson(e)).toList();
  }
}
