import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isOutlined = false,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: isOutlined
            ? Theme.of(context).primaryColor
            : Theme.of(context).canvasColor,
        backgroundColor:
            isOutlined ? Colors.transparent : Theme.of(context).primaryColor,
        shadowColor: Colors.transparent,
        shape: const StadiumBorder(),
        side: BorderSide(
            color: isOutlined
                ? Theme.of(context).primaryColor
                : Colors.transparent),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
