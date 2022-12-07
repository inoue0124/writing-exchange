import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_diff_text/pretty_diff_text.dart';
import 'package:writing_exchange/components/correct_sentence.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/correction/correction_edit/correction_edit_viewmodel.dart';

class CorrectionEditView extends ConsumerWidget {
  CorrectionEditView({super.key});
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(correctionEditViewModelProvider).when(
          loading: CircularProgressIndicator.new,
          error: (error, stacktrace) => Text(error.toString()),
          data: (state) {
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
                    onPressed: () => {},
                  ),
                ],
              ),
              body: SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    runSpacing: 16,
                    children: [
                      CorrectSentence(sentence: state.editedText),
                      CorrectSentence(sentence: state.editedText),
                      CorrectSentence(sentence: state.editedText),
                      CorrectSentence(sentence: state.editedText),
                      const Divider(
                        thickness: 1,
                        height: 1,
                      ),
                      Text(
                        t.yourComment,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextField(
                        controller: _commentController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
  }
}
