import 'package:flutter/material.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';
import 'package:writing_exchange/pages/profile/profile_flow.dart';
import 'package:writing_exchange/pages/question/question_flow.dart';
import 'package:writing_exchange/pages/writing/writing_flow.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  Map<String, Function> _routeBuilders(BuildContext context) {
    return {
      ...writingFlow(context),
      ...questionFlow(context),
      ...profileFlow(context),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: initialRoutes[tabItem],
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<Widget>(
          builder: (context) =>
              _routeBuilders(context)[routeSettings.name]!(context),
        );
      },
    );
  }
}
