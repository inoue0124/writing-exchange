import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/empty_state_view.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/components/post_list_item.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_list_view.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_viewmodel.dart';

class WritingTopView extends ConsumerWidget {
  WritingTopView({
    super.key,
    required this.onPressCreateNew,
  });

  final ScrollController _homeController = ScrollController();
  final Function onPressCreateNew;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(writingTopViewModelProvider);

    return DefaultTabController(
      initialIndex: 0,
      length: state.value?.user.targetLanguages.length ?? 0,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Writing',
            style: Theme.of(context).textTheme.headline6,
          ),
          bottom: TabBar(
            tabs: state.value?.user.targetLanguages
                    .map(
                      (targetLanguage) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(targetLanguage.isoCode.toUpperCase())),
                    )
                    .toList() ??
                [],
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).disabledColor,
            indicatorColor: Theme.of(context).primaryColor,
          ),
          actions: [
            IconButton(
              onPressed: () => onPressCreateNew(),
              icon: const Icon(Icons.create_outlined),
              color: Theme.of(context).primaryColor,
            )
          ],
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0.0,
        ),
        body: ref.watch(writingTopViewModelProvider).when(
              loading: () => const LoadingStateView(),
              error: (error, stacktrace) => Text(error.toString()),
              data: (state) {
                return TabBarView(
                  children: state.user.targetLanguages
                      .map(
                        (targetLanguage) => WritingListView(
                          onPressCreateNew: onPressCreateNew,
                          language: targetLanguage,
                        ),
                      )
                      .toList(),
                );
              },
            ),
      ),
    );
  }
}
