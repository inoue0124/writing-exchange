import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_viewmodel.dart';

class ProfileTopView extends ConsumerWidget {
  ProfileTopView({
    super.key,
  });

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ProfileTopViewModelProvider).when(
          loading: CircularProgressIndicator.new,
          error: (error, stacktrace) => Text(error.toString()),
          data: (state) {
            return Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              appBar: AppBar(
                title: Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headline5,
                ),
                backgroundColor: Theme.of(context).backgroundColor,
                bottomOpacity: 0.0,
                elevation: 0.0,
              ),
              body: SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    runSpacing: 16,
                    children: const [],
                  ),
                ),
              ),
            );
          },
        );
  }
}
