import 'package:flutter/material.dart';
import 'package:writing_exchange/app/app_routes.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_view.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_view.dart';
import 'package:writing_exchange/pages/writing/writing_detail/writing_detail_view.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_view.dart';

Map<String, Function> writingFlow(BuildContext context) {
  return {
    AppRoutes.writingTop: (context) => WritingTopView(
          onPressCreateNew: () => {
            Navigator.push<Widget>(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    writingFlow(context)[AppRoutes.createWriting]!(context),
                fullscreenDialog: true,
              ),
            ),
          },
          onPressGoToCorrection: () => {
            Navigator.push<Widget>(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    writingFlow(context)[AppRoutes.correctionEdit]!(context),
              ),
            ),
          },
          onTapCard: (postId) => {
            Navigator.push<Widget>(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    writingFlow(context)[AppRoutes.writingDetail]!(
                  context,
                  postId,
                ),
              ),
            ),
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
        ),
    AppRoutes.writingDetail: (context, postId) =>
        WritingDetailView(postId: postId)
  };
}
