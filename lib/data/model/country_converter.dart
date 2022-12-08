import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/support/code_countrys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CountryCodeConverter implements JsonConverter<CountryCode, String> {
  const CountryCodeConverter();

  @override
  CountryCode fromJson(String json) {
    final code = codes.firstWhere((code) => code['code'] == json);
    return CountryCode(
      name: code['name'],
      code: code['code'],
      dialCode: code['dial_code'],
      flagUri: 'flags/${code['code']?.toLowerCase()}.png',
    );
  }

  @override
  String toJson(CountryCode countryCode) {
    return countryCode.code!;
  }
}
