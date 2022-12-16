import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/components/empty_state_view.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/components/question_list_card.dart';
import 'package:writing_exchange/pages/question/question_top/question_list/question_list_viewmodel.dart';

class QuestionListView extends ConsumerWidget {
  QuestionListView({
    super.key,
    required this.language,
    required this.onPressCreateNew,
    required this.onTapCard,
  });

  final Language language;
  final Function onPressCreateNew;
  final Function(String) onTapCard;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(questionListViewModelProvider(language)).when(
          loading: () => const LoadingStateView(),
          error: (error, stacktrace) => Text(error.toString()),
          data: (state) {
            return state.questions.isEmpty
                ? EmptyStateView(
                    title: "まだ質問がありません。",
                    actionText: "作成",
                    onPressedActionButton: () => onPressCreateNew(),
                  )
                : SingleChildScrollView(
                    controller: _scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Wrap(
                        runSpacing: 16,
                        children: [
                          for (var question in state.questions)
                            InkWell(
                              onTap: () => onTapCard(question.id),
                              child: QuestionListItem(question: question),
                            )
                        ],
                      ),
                    ),
                  );
          },
        );
  }
}
