import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/rounded_button.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_state.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_viewmodel.dart';

class CreateWritingView extends ConsumerWidget {
  CreateWritingView({
    super.key,
    required this.onPostSuccess,
  });

  final Function() onPostSuccess;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(createWritingViewModelProvider.notifier);
    final state = ref.watch(createWritingViewModelProvider);

    ref.listen<CreateWritingState>(createWritingViewModelProvider,
        (CreateWritingState? previousState, CreateWritingState newState) {
      if (newState.isPostSuccess) {
        onPostSuccess();
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => {viewModel.saveAsDraft(onSuccess: onPostSuccess)},
            child: Text("下書き", style: Theme.of(context).textTheme.button),
          ),
          RoundedButton(
            onPressed: () => {viewModel.postWriting(onSuccess: onPostSuccess)},
            title: "投稿",
          ),
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          TextField(onChanged: viewModel.onChangeTitle),
          TextField(onChanged: viewModel.onChangeContent),
        ],
      ),
    );
  }
}
