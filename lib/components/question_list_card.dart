import 'package:flutter/material.dart';
import 'package:writing_exchange/components/avatar_icon.dart';
import 'package:writing_exchange/data/model/question.dart';
import 'package:writing_exchange/i18n/strings.g.dart';

class QuestionListItem extends StatelessWidget {
  const QuestionListItem({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    final user = question.user!;
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                AvatarIcon(
                  iconUrl: user.iconUrl!,
                  countryCode: user.country!.countryCode,
                ),
                Text(user.name)
              ],
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                t.questionType1(
                  phraseA: question.phraseA,
                  phraseB: question.phraseB!,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
