import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/app_viewmodel.dart';
import 'package:writing_exchange/app/bottom_nav/bottom_navigator.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';
import 'package:writing_exchange/app/bottom_nav/tab_navigator.dart';
import 'package:writing_exchange/pages/onboarding/onboarding_navigator.dart';

class AppView extends ConsumerWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(appViewModelProvider.notifier);
    final state = ref.watch(appViewModelProvider);

    Widget buildOffstageNavigator(TabItem tabItem) {
      return Offstage(
        offstage: state.currentTabIndex != tabItem,
        child: TabNavigator(
          navigatorKey: navigatorKeys[tabItem]!,
          tabItem: tabItem,
        ),
      );
    }

    Widget mainView() {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            buildOffstageNavigator(TabItem.writing),
            buildOffstageNavigator(TabItem.question),
            buildOffstageNavigator(TabItem.profile),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: state.currentTabIndex,
          onSelectTab: viewModel.onTabChanged,
        ),
      );
    }

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: state.isOnboarding
          ? OnboardingNavigator(
              onFinishOnboarding: viewModel.onFinishOnboarding,
            )
          : mainView(),
    );
  }
}
