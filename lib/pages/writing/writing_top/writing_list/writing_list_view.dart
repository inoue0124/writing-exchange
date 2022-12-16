import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/components/empty_state_view.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/components/post_list_item.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_list/writing_list_viewmodel.dart';

class WritingListView extends ConsumerWidget {
  WritingListView({
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
    return ref.watch(writingListViewModelProvider(language)).when(
          loading: () => const LoadingStateView(),
          error: (error, stacktrace) => Text(error.toString()),
          data: (state) {
            return state.writings.isEmpty
                ? EmptyStateView(
                    title: "まだ作文がありません。",
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
                          for (var writing in state.writings)
                            InkWell(
                              onTap: () => onTapCard(writing.id),
                              child: PostListItem(
                                title: writing.title,
                                body: writing.content,
                                imageUrls: writing.imageUrls,
                                correctedCount: writing.correctionCount,
                                editButtonTitle: t.updateCorrection,
                                onPressEdit: () {},
                              ),
                            )
                        ],
                      ),
                    ),
                  );
          },
        );
  }
}
