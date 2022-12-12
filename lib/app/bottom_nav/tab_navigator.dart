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

  void _push(BuildContext context, String destination) {
    Navigator.push<Widget>(
      context,
      MaterialPageRoute(
        builder: (context) => _routeBuilders(context)[destination]!(context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      ...writingFlow(context, _push),
      ...questionFlow(context, _push),
      ...profileFlow(context, _push),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: initialRoutes[tabItem],
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<Widget>(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}
