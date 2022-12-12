import 'package:flutter/material.dart';
import 'package:writing_exchange/app/app_routes.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_view.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_view.dart';

class WritingFlow extends StatelessWidget {
  const WritingFlow({
    super.key,
    required this.navigatorKey,
    required this.context,
  });
  final GlobalKey<NavigatorState> navigatorKey;
  final BuildContext context;

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
      AppRoutes.writingTop: (context) => WritingTopView(
            onPressCreateNew: () => {
              _push(context, AppRoutes.createWriting),
            },
          ),
      AppRoutes.createWriting: (context) => CreateWritingView(
            onPostSuccess: () => {
              Navigator.pop(context),
            },
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: AppRoutes.writingTop,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<Widget>(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}
