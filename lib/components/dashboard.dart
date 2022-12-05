import 'package:flutter/material.dart';
import 'package:writing_exchange/i18n/strings.g.dart';

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
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _item(t.correctionCount, correctionCount),
            const VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            _item(t.reviewPoint, reviewPoint),
            const VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            _item(t.correctionCredit, creditCount),
          ],
        ),
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
