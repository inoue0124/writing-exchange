import 'dart:convert';

import 'package:country_picker/country_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CountryCodeConverter implements JsonConverter<Country, String> {
  const CountryCodeConverter();

  @override
  Country fromJson(String json) {
    try {
      return Country.from(json: jsonDecode(json));
    } catch (e) {
      return Country.worldWide;
    }
  }

  @override
  String toJson(Country country) {
    return country.toJson().toString();
  }
}
