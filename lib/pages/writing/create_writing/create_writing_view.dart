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
      body: Column(
        children: [
          DropdownButton<Language>(
            value: state.language,
            onChanged: (language) {
              if (language != null) viewModel.onChangeLanguage(language);
            },
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
          TextField(onChanged: viewModel.onChangeTitle),
          TextField(onChanged: viewModel.onChangeContent),
          MultipleImageUpload()
        ],
      ),
    );
  }
}
