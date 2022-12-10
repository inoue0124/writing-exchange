import 'package:flutter/material.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';
import 'package:writing_exchange/app/routes.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_view.dart';
import 'package:writing_exchange/pages/question/question_top_view.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_view.dart';
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
    Navigator.push<Widget>(
      context,
      MaterialPageRoute(
        builder: (context) => _routeBuilders(context)[destination]!(context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      Routes.writingTop: (context) => WritingTopView(
            onPressCreateNew: () => {
              _push(context, Routes.createWriting),
            },
          ),
      Routes.createWriting: (context) => CreateWritingView(
            onPostSuccess: () => {
              Navigator.pop(context),
            },
          ),
      Routes.questionTop: (context) => QuestionTopView(),
      Routes.profileTop: (context) => ProfileTopView(),
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
