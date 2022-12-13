import 'package:flutter/material.dart';
import 'package:writing_exchange/components/rounded_button.dart';

enum DialogButtonType {
  /// 塗りつぶし
  main,

  /// 白抜き
  sub,

  /// 白抜きかつ押したらダイアログ閉じる
  cancel,
}

class DialogButton extends StatelessWidget {
  const DialogButton(
    this.text, {
    super.key,
    this.type = DialogButtonType.main,
    required this.onPressed,
  });

  final String text;
  final DialogButtonType type;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case DialogButtonType.main:
        return SizedBox(
          width: double.infinity,
          child: RoundedButton(onPressed: () => onPressed(), text: text),
        );
      case DialogButtonType.sub:
        return SizedBox(
          width: double.infinity,
          child: RoundedButton(
            onPressed: () => onPressed(),
            text: text,
            isOutlined: true,
          ),
        );
      case DialogButtonType.cancel:
        return SizedBox(
          width: double.infinity,
          child: RoundedButton(
            onPressed: () {
              onPressed();
              Navigator.of(context).pop();
            },
            text: text,
            isOutlined: true,
          ),
        );
    }
  }
}

class AppDialog extends StatelessWidget {
  const AppDialog(
      {Key? key, required this.title, this.message, required this.buttons})
      : super(key: key);

  final String title;
  final String? message;
  final List<DialogButton> buttons;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 32),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // タイトル
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),

            // メッセージ
            if (message != null)
              Column(
                children: [
                  Text(
                    message!,
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                ],
              ),

            // ボタン
            ...buttons.map(
              (button) => Column(
                children: [
                  button,
                  const SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
