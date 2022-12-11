import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/data/model/user.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const OnboardingState._();

  const factory OnboardingState({
    @Default(0) int currentPageIndex,
    @Default(false) bool isLastPage,
    @Default(null) Language? nativeLanguage1,
    @Default(null) Language? nativeLanguage2,
    @Default(null) Language? nativeLanguage3,
    @Default(User(name: '', iconUrl: '', nativeLanguages: [], targetLanguages: []))
        User user,
  }) = _OnboardingState;

  bool get disableNextButton =>
      user.country == null ||
      [nativeLanguage1, nativeLanguage2, nativeLanguage3]
          .every((l) => l == null);
  bool get disableRegisterButton => user.targetLanguages.isEmpty;
}
