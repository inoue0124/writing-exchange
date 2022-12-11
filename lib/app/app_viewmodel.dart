import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/app_state.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';
import 'package:writing_exchange/data/repository/app_flag_repository.dart';

class AppViewModel extends StateNotifier<AppState> {
  AppViewModel({required AppFlagRepositoryInterface appFlagRepository})
      : _appFlagRepository = appFlagRepository,
        super(const AppState()) {
    checkIsFinishedOnboarding();
  }
  final AppFlagRepositoryInterface _appFlagRepository;

  Future<void> checkIsFinishedOnboarding() async {
    final isFinishedOnboarding =
        await _appFlagRepository.getIsFinishedOnboarding();
    state = state.copyWith(isFinishedOnboarding: isFinishedOnboarding);
  }

  void onTabChanged(TabItem tabItem) {
    state = state.copyWith(currentTabIndex: tabItem);
  }

  Future<void> onFinishOnboarding() async {
    state = state.copyWith(isFinishedOnboarding: true);
    await _appFlagRepository.updateIsFinishedOnboarding(true);
  }
}

final appViewModelProvider =
    StateNotifierProvider.autoDispose<AppViewModel, AppState>(
  (ref) => AppViewModel(appFlagRepository: ref.read(appFlagRepositoryProvider)),
);
