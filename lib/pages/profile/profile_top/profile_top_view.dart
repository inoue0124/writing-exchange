import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:writing_exchange/components/loading_state_view.dart';
import 'package:writing_exchange/components/profile_card.dart';
import 'package:writing_exchange/data/model/country_converter.dart';
import 'package:writing_exchange/data/model/language_converter.dart';
import 'package:writing_exchange/data/model/user.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_viewmodel.dart';

class ProfileTopView extends ConsumerWidget {
  ProfileTopView({
    super.key,
  });

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Wrap(
          runSpacing: 16,
          children: [
            ProfileCard(
              user: User(
                name: "testuser",
                iconUrl:
                    "https://cdn.dribbble.com/users/970912/avatars/small/8c3a8dfc6410c1a52e86b2b99ac433f5.jpg?1604405129",
                country: const CountryCodeConverter().fromJson('JP'),
                targetLanguages: [Language.fromIsoCode('en')],
                nativeLanguages: [Language.fromIsoCode('ja')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
