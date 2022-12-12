import 'package:flutter/material.dart';
import 'package:writing_exchange/app/app_routes.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_view.dart';

Map<String, WidgetBuilder> profileFlow(BuildContext context, Function push) {
  return {
    AppRoutes.profileTop: (context) => ProfileTopView(),
  };
}
