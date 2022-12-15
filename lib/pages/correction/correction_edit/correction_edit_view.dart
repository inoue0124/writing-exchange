import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/correct_sentence.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_viewmodel.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_viewmodel.dart';

class CorrectionEditView extends ConsumerWidget {
  CorrectionEditView({
    super.key,
    required this.onFinishCorrection,
  });
  final Function onFinishCorrection;

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topState = ref.watch(writingTopViewModelProvider);
    final post = topState.value?.needCorrectionPost;
    final viewModel = ref.watch(correctionEditViewModelProvider(post).notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Writing Exchange',
          style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        actions: [
          TextButton(
            child: Text(t.save),
            onPressed: () async {
              await viewModel.onSave();
              onFinishCorrection();
            },
          ),
        ],
      ),
      body: ref.watch(correctionEditViewModelProvider(post)).when(
            loading: () => const LoadingStateView(),
            error: (error, stacktrace) => Text(error.toString()),
            data: (state) {
              return SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    runSpacing: 16,
                    children: [
                      ...state.originalTexts.asMap().entries.map(
                        (entry) {
                          return CorrectSentence(
                            sentence: entry.value,
                            onChangeText: (text) => {
                              viewModel.onChangeText(entry.key, text),
                            },
                          );
                        },
                      ).toList(),
                      const Divider(
                        thickness: 1,
                        height: 1,
                      ),
                      Text(
                        t.yourComment,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextField(
                        onChanged: viewModel.onChangeCommet,
                        controller: _commentController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
    );
  }
}
