import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/onboarding/walkthrough/walkthrough_viewmodel.dart';

class WalkthroughView extends ConsumerWidget {
  const WalkthroughView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(walkthroughViewModelProvider.notifier);
    final state = ref.watch(walkthroughViewModelProvider);

    return ElevatedButton(
      onPressed: () => {viewModel.onGetStarted(() {})},
      child: const Text("Get Started"),
    );
  }
}
