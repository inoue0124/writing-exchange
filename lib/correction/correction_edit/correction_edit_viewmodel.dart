import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/correction/correction_Edit/correction_edit_state.dart';
import 'package:writing_exchange/model/post.dart';
import 'package:writing_exchange/model/user.dart';

class CorrectionEditViewModel
    extends StateNotifier<AsyncValue<CorrectionEditState>> {
  CorrectionEditViewModel() : super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
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
    state = AsyncData(
      CorrectionEditState(
        post: post,
        editedText: post.body,
      ),
    );
  }
}

final correctionEditViewModelProvider = StateNotifierProvider.autoDispose<
    CorrectionEditViewModel, AsyncValue<CorrectionEditState>>(
  (ref) => CorrectionEditViewModel(),
);
