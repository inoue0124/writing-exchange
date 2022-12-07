import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:writing_exchange/components/post_list_item.dart';
import 'package:writing_exchange/components/dashboard.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/correction/correction_home/correction_home_viewmodel.dart';

class CorrectionHomeView extends ConsumerWidget {
  CorrectionHomeView({
    super.key,
    required this.onPressEdit,
  });

  final ScrollController _homeController = ScrollController();
  Function() onPressEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var correctedPosts = [];
    // var waitingCorrectionPost = correctedPosts[0];

    return ref.watch(correctionHomeViewModelProvider).when(
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
              ),
              body: SingleChildScrollView(
                controller: _homeController,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    runSpacing: 16,
                    children: [
                      DashBoard(
                        correctionCount: state.correctionCount,
                        reviewPoint: state.reviewPoint,
                        creditCount: state.creditCount,
                      ),
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
                      // PostListItem(
                      //   title: waitingCorrectionPost.title,
                      //   body: waitingCorrectionPost.body,
                      //   imageUrls: waitingCorrectionPost.imageUrls,
                      //   correctedCount: waitingCorrectionPost.correctedCount,
                      //   editButtonTitle: t.correct,
                      //   onPressEdit: onPressEdit,
                      // ),
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
                      // MasonryGridView.count(
                      //   shrinkWrap: true,
                      //   primary: false,
                      //   itemCount: post.imageUrls.length,
                      //   crossAxisCount: 2,
                      //   mainAxisSpacing: 4,
                      //   crossAxisSpacing: 4,
                      //   itemBuilder: (context, index) {
                      //     return PostListItem(
                      //       title: post.title,
                      //       body: post.body,
                      //       imageUrls: post.imageUrls,
                      //       correctedCount: post.correctedCount,
                      //       editButtonTitle: t.updateCorrection,
                      //       onPressEdit: () {},
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
  }
}
