import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/empty_state_view.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/components/post_list_item.dart';
import 'package:writing_exchange/components/rounded_button.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_viewmodel.dart';

class WritingTopView extends ConsumerWidget {
  WritingTopView({
    super.key,
    required this.onPressCreateNew,
  });

  final ScrollController _homeController = ScrollController();
  Function() onPressCreateNew;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Writing',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          RoundedButton(
            onPressed: onPressCreateNew,
            title: "新規作成",
          ),
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: ref.watch(writingTopViewModelProvider).when(
            loading: () => const LoadingStateView(),
            error: (error, stacktrace) => Text(error.toString()),
            data: (state) {
              return state.writings.isEmpty
                  ? EmptyStateView(
                      title: "まだ作文がありません。",
                      actionText: "作成",
                      onPressedActionButton: onPressCreateNew,
                    )
                  : SingleChildScrollView(
                      controller: _homeController,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Wrap(
                          runSpacing: 16,
                          children: [
                            // DashBoard(
                            //   correctionCount: state.correctionCount,
                            //   reviewPoint: state.reviewPoint,
                            //   creditCount: state.creditCount,
                            // ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  t.waitingCorrection,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  t.alredyCorrected,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                            for (var post in state.writings)
                              PostListItem(
                                title: post.title,
                                body: post.content,
                                imageUrls: post.imageUrls,
                                correctedCount: post.correctionCount,
                                editButtonTitle: t.updateCorrection,
                                onPressEdit: () {},
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
