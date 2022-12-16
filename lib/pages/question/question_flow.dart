import 'package:flutter/material.dart';
import 'package:writing_exchange/app/app_routes.dart';
import 'package:writing_exchange/pages/question/question_top/question_top_view.dart';

Map<String, WidgetBuilder> questionFlow(BuildContext context) {
  return {
    AppRoutes.questionTop: (context) => QuestionTopView(
          onPressCreateNew: () => {},
          onPressGoToCorrection: () => {},
          onTapCard: (postId) => {},
        ),
  };
}
