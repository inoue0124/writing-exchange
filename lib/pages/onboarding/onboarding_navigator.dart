import 'package:flutter/material.dart';
import 'package:writing_exchange/pages/onboarding/onboarding_routes.dart';
import 'package:writing_exchange/pages/onboarding/select_native_language_view.dart';
import 'package:writing_exchange/pages/onboarding/select_target_language_view.dart';
import 'package:writing_exchange/pages/onboarding/walkthrough_view.dart';

class OnboardingNavigator extends StatelessWidget {
  const OnboardingNavigator({super.key, required this.onFinishOnboarding});
  final Function onFinishOnboarding;

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
      OnboardingRoutes.walkthrough: (context) => WalkthroughView(
            onFinishPaging: () =>
                _push(context, OnboardingRoutes.selectNativeLanguage),
          ),
      OnboardingRoutes.selectNativeLanguage: (context) =>
          SelectNativeLanguageView(
            onFinishSelection: () =>
                _push(context, OnboardingRoutes.selectTargetLanguage),
          ),
      OnboardingRoutes.selectTargetLanguage: (context) =>
          SelectTargetLanguageView(
            onFinishSelection: onFinishOnboarding,
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      initialRoute: OnboardingRoutes.walkthrough,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<Widget>(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}
