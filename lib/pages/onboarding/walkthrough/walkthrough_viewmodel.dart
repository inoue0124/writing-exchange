import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/pages/onboarding/walkthrough/walkthrough_state.dart';

class WalkthroughViewModel extends StateNotifier<WalkthroughState> {
  WalkthroughViewModel({required AuthServiceInterface authService})
      : _authService = authService,
        super(const WalkthroughState());

  final AuthServiceInterface _authService;

  Future<void> onGetStarted(Function onSuccess) async {
    await _authService.register();
    onSuccess();
  }

  void onPageChanged(int index) {
    state = state.copyWith(currentPageIndex: index);
    if (index == 2) {
      state = state.copyWith(isLastpage: true);
    }
  }
}

final walkthroughViewModelProvider =
    StateNotifierProvider.autoDispose<WalkthroughViewModel, WalkthroughState>(
  (ref) => WalkthroughViewModel(
    authService: ref.watch(authServiceProvider),
  ),
);
