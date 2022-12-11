import 'package:flutter/material.dart';
import 'package:writing_exchange/components/avatar_icon.dart';
import 'package:writing_exchange/data/model/user.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              user.name,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            user.iconUrl == null
                ? const CircleAvatar(
                    radius: 30,
                    child: Text("No Image"),
                  )
                : AvatarIcon(
                    iconUrl: user.iconUrl!,
                    countryCode: user.country!.countryCode,
                  )
          ],
        ),
        Row(
          children: user.nativeLanguages
              .map((e) => Text(e.isoCode.toUpperCase()))
              .toList(),
        ),
        Row(
          children: user.targetLanguages
              .map((e) => Text(e.isoCode.toUpperCase()))
              .toList(),
        )
      ],
    );
  }
}
