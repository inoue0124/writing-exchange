import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({
    super.key,
    required this.correctionCount,
    required this.reviewPoint,
    required this.creditCount,
  });

  final int correctionCount;
  final int reviewPoint;
  final int creditCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _item(AppLocalizations.of(context)!.correctionCount, correctionCount),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          _item(AppLocalizations.of(context)!.reviewPoint, reviewPoint),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          _item(AppLocalizations.of(context)!.correctionCredit, creditCount),
        ],
      ),
    );
  }

  Widget _item(String title, int value) {
    return Column(
      children: [
        Text(title),
        Text(value.toString()),
      ],
    );
  }
}
