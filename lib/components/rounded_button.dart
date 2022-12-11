import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).canvasColor,
        backgroundColor: Theme.of(context).primaryColor,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.add),
          Text(title),
        ],
      ),
    );
  }
}
