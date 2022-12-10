import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/pages/question/question_top/question_top_viewmodel.dart';

class QuestionTopView extends ConsumerWidget {
  QuestionTopView({
    super.key,
  });

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Question',
          style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: ref.watch(questionTopViewModelProvider).when(
            loading: () => const LoadingStateView(),
            error: (error, stacktrace) => Text(error.toString()),
            data: (state) {
              return SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    runSpacing: 16,
                    children: const [],
                  ),
                ),
              );
            },
          ),
    );
  }
}
