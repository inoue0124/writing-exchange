import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/pages/writing/writing_detail/writing_detail_viewmodel.dart';

class WritingDetailView extends ConsumerWidget {
  const WritingDetailView({
    super.key,
    required this.postId,
  });

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.watch(writingDetailViewModelProvider(postId).notifier);
    final asyncState = ref.watch(writingDetailViewModelProvider(postId));

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        actions: [
          TextButton(
            onPressed: asyncState.isLoading ? null : () {},
            child: Text("編集", style: Theme.of(context).textTheme.button),
          ),
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: asyncState.when(
        loading: () => const LoadingStateView(),
        error: (error, stacktrace) => Text(error.toString()),
        data: (state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    state.post!.title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    state.post!.content,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
