import 'package:flutter/material.dart';
import 'package:writing_exchange/app/bottom_navigator.dart';
import 'package:writing_exchange/app/tab_helper.dart';
import 'package:writing_exchange/app/tab_navigator.dart';
import 'package:writing_exchange/pages/onboarding/walkthrough/walkthrough_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  TabItem _currentTab = TabItem.writing;

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      navigatorKeys[tabItem]?.currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: const WalkthroughView()
        // child: Scaffold(
        //   body: Stack(
        //     children: <Widget>[
        //       _buildOffstageNavigator(TabItem.writing),
        //       _buildOffstageNavigator(TabItem.question),
        //       _buildOffstageNavigator(TabItem.profile),
        //     ],
        //   ),
        //   bottomNavigationBar: BottomNavigation(
        //     currentTab: _currentTab,
        //     onSelectTab: _selectTab,
        //   ),
        // ),
        );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}
