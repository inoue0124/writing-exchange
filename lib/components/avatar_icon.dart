import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  const AvatarIcon({
    super.key,
    required this.iconUrl,
    required this.countryCode,
  });
  final String iconUrl;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(iconUrl),
          radius: 30,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            child: CircleFlag(
              countryCode,
              size: 16,
            ),
          ),
        )
      ],
    );
  }
}
