import 'package:flutter/material.dart';
import 'package:writing_exchange/components/rounded_button.dart';

class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    super.key,
    required this.title,
    required this.actionText,
    required this.onPressedActionButton,
  });

  final String title;
  final String actionText;
  final Function() onPressedActionButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.note_add),
          Text(title),
          RoundedButton(
            onPressed: onPressedActionButton,
            title: actionText,
          )
        ],
      ),
    );
  }
}
