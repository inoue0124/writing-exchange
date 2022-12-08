import 'package:flutter/material.dart';
import 'package:writing_exchange/app/tab_helper.dart';
import 'package:writing_exchange/pages/correction/correction_home/correction_home_view.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_view.dart';
import 'package:writing_exchange/pages/question/question_top_view.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_view.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, String destination) {
    var routeBuilders = _routeBuilders(context);

    Navigator.push<Widget>(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[destination]!(context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.writingTop: (context) =>
          WritingTopView(onPressEdit: () {}),
      TabNavigatorRoutes.questionTop: (context) => QuestionTopView(),
      TabNavigatorRoutes.profileTop: (context) => ProfileTopView(),
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
