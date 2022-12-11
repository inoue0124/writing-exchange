import 'package:country_picker/country_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/pages/onboarding/onboarding_state.dart';

class OnboardingViewModel extends StateNotifier<OnboardingState> {
  OnboardingViewModel({required AuthServiceInterface authService})
      : _authService = authService,
        super(const OnboardingState());

  final AuthServiceInterface _authService;

  Future<void> createUser() async {
    final user = state.user.copyWith(
      nativeLanguages: [
        if (state.nativeLanguage1 != null) state.nativeLanguage1!,
        if (state.nativeLanguage2 != null) state.nativeLanguage2!,
        if (state.nativeLanguage3 != null) state.nativeLanguage3!,
      ],
    );
    await _authService.register(user);
  }

  void onPageChanged(int index) {
    state = state.copyWith(currentPageIndex: index);
    state = state.copyWith(isLastPage: index == 2);
  }

  void onSelectCountry(Country country) {
    final user = state.user.copyWith(country: country);
    state = state.copyWith(user: user);
  }

  void onSelectNativeLanguage1(Language language) {
    if (![state.nativeLanguage1, state.nativeLanguage2, state.nativeLanguage3]
        .contains(language)) {
      state = state.copyWith(nativeLanguage1: language);
    }
  }

  void onSelectNativeLanguage2(Language language) {
    if (![state.nativeLanguage1, state.nativeLanguage2, state.nativeLanguage3]
        .contains(language)) {
      state = state.copyWith(nativeLanguage2: language);
    }
  }

  void onSelectNativeLanguage3(Language language) {
    if (![state.nativeLanguage1, state.nativeLanguage2, state.nativeLanguage3]
        .contains(language)) {
      state = state.copyWith(nativeLanguage3: language);
    }
  }

  void onSelectTargetLanguage(Language language) {
    final user = state.user.copyWith(targetLanguages: [language]);
    state = state.copyWith(user: user);
  }
}

final onboardingViewModelProvider =
    StateNotifierProvider.autoDispose<OnboardingViewModel, OnboardingState>(
  (ref) => OnboardingViewModel(
    authService: ref.watch(authServiceProvider),
  ),
);
