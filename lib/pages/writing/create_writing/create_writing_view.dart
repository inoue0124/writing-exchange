import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/components/multiple_image_upload.dart';
import 'package:writing_exchange/components/rounded_button.dart';
import 'package:writing_exchange/pages/writing/create_writing/create_writing_viewmodel.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_list_viewmodel.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_viewmodel.dart';

class CreateWritingView extends ConsumerWidget {
  const CreateWritingView({
    super.key,
    required this.onPostSuccess,
  });

  final Function onPostSuccess;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topState = ref.watch(writingTopViewModelProvider);
    final viewModel = ref.watch(
      createWritingViewModelProvider(topState.value?.selectedLanguage).notifier,
    );
    final state = ref.watch(
      createWritingViewModelProvider(topState.value?.selectedLanguage),
    );
    final topListViewModel = ref.watch(
      writingListViewModelProvider(topState.value!.selectedLanguage!).notifier,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        actions: [
          TextButton(
            onPressed: state.isLoading
                ? null
                : () async {
                    await viewModel.saveAsDraft();
                    await topListViewModel.fetch();
                    onPostSuccess();
                  },
            child: Text("下書き", style: Theme.of(context).textTheme.button),
          ),
          RoundedButton(
            onPressed: state.isLoading
                ? null
                : () async {
                    await viewModel.postWriting();
                    await topListViewModel.fetch();
                    onPostSuccess();
                  },
            title: "投稿",
          ),
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 110),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  style: BorderStyle.solid,
                  width: 0.80,
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<Language>(
                  onChanged: (language) {
                    if (language != null) viewModel.onChangeLanguage(language);
                  },
                  isDense: true,
                  value: state.language,
                  style: Theme.of(context).textTheme.caption,
                  focusColor: Theme.of(context).canvasColor,
                  dropdownColor: Theme.of(context).canvasColor,
                  items: topState.value?.user.targetLanguages
                          .map(
                            (Language language) => DropdownMenuItem(
                              value: language,
                              child: Text(language.name),
                            ),
                          )
                          .toList() ??
                      [],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: viewModel.onChangeTitle,
                decoration:
                    const InputDecoration.collapsed(hintText: 'タイトルをつけましょう。'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: TextField(
                  onChanged: viewModel.onChangeContent,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration:
                      const InputDecoration.collapsed(hintText: '何を書きますか？'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 100,
          child: MultipleImageUpload(onChange: viewModel.onChangeImage)),
    );
  }
}
