import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:writing_exchange/components/post_list_item.dart';
import 'package:writing_exchange/components/dashboard.dart';
import 'package:writing_exchange/correction/correction_home/correction_home_viewmodel.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/model/post.dart';
import 'package:writing_exchange/model/user.dart';

class CorrectionHomeView extends ConsumerWidget {
  CorrectionHomeView({
    super.key,
    required this.onPressEdit,
  });

  final ScrollController _homeController = ScrollController();
  Function() onPressEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const post = Post(
      title: "テスト作文タイトル",
      body:
          "この２つです。このうち、サクッと画像表示を体験できるのは、前者の方なので、まずはネットにある画像を表示してみましょう。ドキュメントの真ん中の方に、以下のようなサンプルコードがあると思います。",
      imageUrls: [
        "https://tk.ismcdn.jp/mwimgs/a/a/1140/img_aab05d16a4168bcd9f0f3c01ade6ce72164430.jpg",
        "https://toraiz.jp/english-times/src/data/uploads/2021/11/AdobeStock_280828158.jpeg",
        "https://a.cdn-hotels.com/gdcs/production101/d1881/69af4a8f-9990-4367-8cec-b1b024e9b0e0.jpg?impolicy=fcrop&w=800&h=533&q=medium",
        "https://img.my-best.com/content_section/tip_component/contents/5af92d93d38711c2e04d232d8c8bc223.jpeg?ixlib=rails-4.2.0&q=70&lossless=0&w=690&fit=max&s=4ed0d9e000e19a6e09fb6803d4b5f65c"
      ],
      user: User(
        name: "John",
        imageUrl: "https://img01.gahag.net/201603/23o/gahag-0068328243.jpg",
      ),
    );
    var correctedPosts = [post, post, post];
    var waitingCorrectionPost = correctedPosts[0];

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
                      PostListItem(
                        title: waitingCorrectionPost.title,
                        body: waitingCorrectionPost.body,
                        imageUrls: waitingCorrectionPost.imageUrls,
                        correctedCount: waitingCorrectionPost.correctedCount,
                        editButtonTitle: t.correct,
                        onPressEdit: onPressEdit,
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
                      MasonryGridView.count(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: post.imageUrls.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return PostListItem(
                            title: post.title,
                            body: post.body,
                            imageUrls: post.imageUrls,
                            correctedCount: post.correctedCount,
                            editButtonTitle: t.updateCorrection,
                            onPressEdit: () {},
                          );
                        },
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
