import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:writing_exchange/components/walkthrough_page.dart';
import 'package:writing_exchange/i18n/strings.g.dart';
import 'package:writing_exchange/pages/onboarding/walkthrough/walkthrough_viewmodel.dart';

class WalkthroughView extends ConsumerWidget {
  WalkthroughView({
    super.key,
    required this.onFinishPaging,
  });

  final pageController = PageController();
  final Function onFinishPaging;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(walkthroughViewModelProvider.notifier);
    final state = ref.watch(walkthroughViewModelProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: const EdgeInsets.only(bottom: 100),
        child: PageView(
          controller: pageController,
          onPageChanged: viewModel.onPageChanged,
          children: [
            AnimatedOpacity(
              opacity: state.currentPageIndex >= 0 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: WalkthroughPage(
                title: t.walkthroughTitle1,
                subtitle: t.walkthroughSubitle1,
                imagePath: 'assets/walkthrough_1.png',
              ),
            ),
            AnimatedOpacity(
              opacity: state.currentPageIndex >= 1 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: WalkthroughPage(
                title: t.walkthroughTitle2,
                subtitle: t.walkthroughSubitle2,
                imagePath: 'assets/walkthrough_2.png',
              ),
            ),
            AnimatedOpacity(
              opacity: state.currentPageIndex >= 2 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: WalkthroughPage(
                title: t.walkthroughTitle3,
                subtitle: t.walkthroughSubitle3,
                imagePath: 'assets/walkthrough_3.png',
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: const Text('SKIP'),
              onPressed: () => pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(
                  spacing: 8,
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Theme.of(context).dividerColor,
                  activeDotColor: Theme.of(context).primaryColor,
                ),
                onDotClicked: (index) => pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
              ),
            ),
            TextButton(
              child: const Text('NEXT'),
              onPressed: () {
                if (state.isLastpage) {
                  onFinishPaging();
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
            )
          ],
        ),
      ),
    );

    //   return Scaffold(
    //     body: Column(
    //       children: [
    //         ElevatedButton(
    //           onPressed: () => {viewModel.onGetStarted(() {})},
    //           child: const Text("Get Started"),
    //         ),
    //         CountryListPick(
    //           appBar: AppBar(
    //             elevation: 0,
    //             backgroundColor: Theme.of(context).backgroundColor,
    //             title: Text(
    //               'Select your nationality',
    //               style: Theme.of(context).textTheme.headline5,
    //             ),
    //             iconTheme: IconThemeData(
    //               color: Theme.of(context).primaryColor,
    //             ),
    //           ),

    //           // if you need custome picker use this
    //           pickerBuilder: (context, CountryCode? countryCode) {
    //             return Row(
    //               children: [
    //                 Image.asset(
    //                   countryCode!.flagUri!,
    //                   package: 'country_list_pick',
    //                 ),
    //                 Text(countryCode.code!),
    //                 Text(countryCode.dialCode!),
    //               ],
    //             );
    //           },

    //           // To disable option set to false
    //           theme: CountryTheme(
    //             isShowFlag: false,
    //             isShowTitle: true,
    //             isShowCode: false,
    //             isDownIcon: false,
    //             showEnglishName: true,
    //           ),
    //           initialSelection: 'US',
    //           onChanged: (CountryCode? code) {
    //             print(code!.name);
    //             print(code.code);
    //             print(code.dialCode);
    //             print(code.flagUri);
    //           },
    //           // Whether to allow the widget to set a custom UI overlay
    //           useUiOverlay: true,
    //           // Whether the country list should be wrapped in a SafeArea
    //           useSafeArea: false,
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}
