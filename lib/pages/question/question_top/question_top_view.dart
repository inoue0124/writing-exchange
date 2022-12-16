import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/pages/question/question_top/question_list/question_list_view.dart';
import 'package:writing_exchange/pages/question/question_top/question_top_viewmodel.dart';

class QuestionTopView extends ConsumerWidget {
  const QuestionTopView({
    super.key,
    required this.onPressCreateNew,
    required this.onPressGoToCorrection,
    required this.onTapCard,
  });

  final Function onPressCreateNew;
  final Function onPressGoToCorrection;
  final Function(String) onTapCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(questionTopViewModelProvider.notifier);
    final asyncState = ref.watch(questionTopViewModelProvider);

    return asyncState.when(
      loading: () => const LoadingStateView(),
      error: (error, stacktrace) {
        print(error);
        return Text(error.toString());
      },
      data: (state) {
        return DefaultTabController(
          initialIndex: 0,
          length: state.user.targetLanguages.length ?? 0,
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              title: Text(
                'Writing',
                style: Theme.of(context).textTheme.headline6,
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    isScrollable: true,
                    tabs: state.user.targetLanguages
                        .map(
                          (targetLanguage) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(targetLanguage.name),
                          ),
                        )
                        .toList(),
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Theme.of(context).disabledColor,
                    indicatorColor: Theme.of(context).primaryColor,
                    onTap: viewModel.onTapTab,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => viewModel.onPressEditIcon(
                    context,
                    onPressGoToCorrection,
                    onPressCreateNew,
                  ),
                  icon: const Icon(Icons.create_outlined),
                  color: Theme.of(context).primaryColor,
                )
              ],
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0.0,
            ),
            body: asyncState.when(
              loading: () => const LoadingStateView(),
              error: (error, stacktrace) => Text(error.toString()),
              data: (state) {
                return TabBarView(
                  children: state.user.targetLanguages
                      .map(
                        (targetLanguage) => QuestionListView(
                          onPressCreateNew: () => {
                            viewModel.onPressEditIcon(
                              context,
                              onPressGoToCorrection,
                              onPressCreateNew,
                            ),
                          },
                          language: targetLanguage,
                          onTapCard: onTapCard,
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
