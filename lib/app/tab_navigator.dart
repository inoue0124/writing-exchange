import 'package:flutter/material.dart';
import 'package:writing_exchange/app/tab_helper.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_view.dart';
import 'package:writing_exchange/pages/correction/correction_home/correction_home_view.dart';

class TabNavigatorRoutes {
  static const String correctionHome = '/';
  static const String correctionEdit = '/correction/edit';
  static const String writingHome = '/writing';
}

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
      TabNavigatorRoutes.correctionHome: (context) => CorrectionHomeView(
            onPressEdit: () =>
                _push(context, TabNavigatorRoutes.correctionEdit),
          ),
      TabNavigatorRoutes.correctionEdit: (context) => CorrectionEditView(),
      TabNavigatorRoutes.writingHome: (context) =>
          CorrectionHomeView(onPressEdit: () => {}),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: tabItem == TabItem.correction
          ? TabNavigatorRoutes.correctionHome
          : TabNavigatorRoutes.writingHome,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<Widget>(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}
