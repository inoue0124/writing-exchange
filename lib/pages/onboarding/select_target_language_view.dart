import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/language_selector.dart';
import 'package:writing_exchange/pages/onboarding/onboarding_viewmodel.dart';
import 'package:writing_exchange/pages/writing/writing_top/writing_top_viewmodel.dart';

class SelectTargetLanguageView extends ConsumerWidget {
  const SelectTargetLanguageView({
    super.key,
    required this.onFinishSelection,
  });

  final Function onFinishSelection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(onboardingViewModelProvider.notifier);
    final writingTopViewModel = ref.watch(writingTopViewModelProvider.notifier);
    final state = ref.watch(onboardingViewModelProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Text(
                'Which language are you learning?',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              LanguageSelector(onSelect: viewModel.onSelectTargetLanguage),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            TextButton(
              onPressed: state.disableRegisterButton
                  ? null
                  : () async {
                      await viewModel.createUser();
                      await writingTopViewModel.initialFetch();
                      onFinishSelection();
                    },
              child: const Text('Get started!'),
            )
          ],
        ),
      ),
    );
  }
}
