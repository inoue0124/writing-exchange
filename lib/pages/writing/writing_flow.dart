import 'package:flutter/material.dart';
import 'package:writing_exchange/app/app_routes.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_view.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_view.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_view.dart';

Map<String, WidgetBuilder> writingFlow(BuildContext context, Function push) {
  return {
    AppRoutes.writingTop: (context) => WritingTopView(
          onPressCreateNew: () => {
            push(
              context,
              AppRoutes.createWriting,
              pushModaly: true,
            ),
          },
          onPressGoToCorrection: () => {
            push(
              context,
              AppRoutes.correctionEdit,
            )
          },
        ),
    AppRoutes.createWriting: (context) => CreateWritingView(
          onPostSuccess: () => {
            Navigator.pop(context),
          },
        ),
    AppRoutes.correctionEdit: (context) => CorrectionEditView(
          onFinishCorrection: () => {
            Navigator.pop(context),
          },
        )
  };
}
