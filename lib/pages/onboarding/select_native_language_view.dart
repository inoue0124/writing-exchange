import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/components/country_selector.dart';
import 'package:writing_exchange/components/language_selector.dart';
import 'package:writing_exchange/pages/onboarding/onboarding_viewmodel.dart';

class SelectNativeLanguageView extends ConsumerWidget {
  const SelectNativeLanguageView({
    super.key,
    required this.onFinishSelection,
  });

  final Function onFinishSelection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(onboardingViewModelProvider.notifier);
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
                'Tell us about youself!',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CountrySelector(onSelect: viewModel.onSelectCountry),
              const SizedBox(height: 48),
              LanguageSelector(
                onSelect: viewModel.onSelectNativeLanguage1,
                defaultSelection: state.nativeLanguage1,
                useSelectorState: false,
              ),
              const SizedBox(height: 24),
              LanguageSelector(
                onSelect: viewModel.onSelectNativeLanguage2,
                defaultSelection: state.nativeLanguage2,
                useSelectorState: false,
              ),
              const SizedBox(height: 24),
              LanguageSelector(
                onSelect: viewModel.onSelectNativeLanguage3,
                defaultSelection: state.nativeLanguage3,
                useSelectorState: false,
              ),
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
              onPressed:
                  state.disableNextButton ? null : () => onFinishSelection(),
              child: const Text('NEXT'),
            )
          ],
        ),
      ),
    );
  }
}
