import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/app_state.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';

class AppViewModel extends StateNotifier<AppState> {
  AppViewModel() : super(const AppState());

  void onTabChanged(TabItem tabItem) {
    state = state.copyWith(currentTabIndex: tabItem);
  }

  void onFinishOnboarding() {
    state = state.copyWith(isOnboarding: false);
  }
}

final appViewModelProvider =
    StateNotifierProvider.autoDispose<AppViewModel, AppState>(
  (ref) => AppViewModel(),
);
