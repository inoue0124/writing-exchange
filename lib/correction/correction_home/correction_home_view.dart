import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/dashboard.dart';
import 'package:writing_exchange/correction/correction_home/correction_home_viewmodel.dart';

class CorrectionHomeView extends ConsumerWidget {
  CorrectionHomeView({super.key});
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(correctionHomeViewModelProvider).when(
          loading: CircularProgressIndicator.new,
          error: (error, stacktrace) => Text(error.toString()),
          data: (state) {
            return SingleChildScrollView(
              controller: _homeController,
              child: Column(
                children: [
                  DashBoard(
                    correctionCount: state.correctionCount,
                    reviewPoint: state.reviewPoint,
                    creditCount: state.creditCount,
                  ),
                ],
              ),
            );
          },
        );
  }
}
