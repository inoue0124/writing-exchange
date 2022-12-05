import 'package:flutter/material.dart';
import 'package:pretty_diff_text/pretty_diff_text.dart';

class CorrectSentence extends StatefulWidget {
  const CorrectSentence({
    super.key,
    required this.sentence,
  });

  final String sentence;

  @override
  CorrectSentenceState createState() => CorrectSentenceState();
}

class CorrectSentenceState extends State<CorrectSentence> {
  bool _isEditing = false;
  bool _isShowingDiff = false;
  TextEditingController controller = TextEditingController();

  void _onPressEdit() {
    setState(() {
      _isEditing = !_isEditing;
      _isShowingDiff = true;
    });
    if (controller.text.isEmpty) {
      controller.text = widget.sentence;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: _isShowingDiff
                  ? PrettyDiffText(
                      oldText: widget.sentence,
                      newText: controller.text,
                      addedTextStyle: const TextStyle(
                        backgroundColor: null,
                        color: Colors.green,
                      ),
                      deletedTextStyle: const TextStyle(
                        backgroundColor: null,
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  : Text(widget.sentence),
            ),
            IconButton(
              onPressed: _onPressEdit,
              icon: Icon(
                _isEditing ? Icons.cancel : Icons.create_outlined,
              ),
            )
          ],
        ),
        Visibility(
          visible: _isEditing,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        )
      ],
    );
  }
}
