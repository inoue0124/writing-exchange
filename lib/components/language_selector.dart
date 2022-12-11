import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({
    super.key,
    required this.onSelect,
    this.defaultSelection,
    this.useSelectorState = true,
  });

  final Function onSelect;
  final Language? defaultSelection;
  final bool useSelectorState;

  @override
  LanguageSelectorState createState() => LanguageSelectorState();
}

class LanguageSelectorState extends State<LanguageSelector> {
  Language? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    if (widget.defaultSelection != null) {
      selectedLanguage = widget.defaultSelection;
    }

    void showPicker() => showDialog(
          context: context,
          builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: LanguagePickerDialog(
              titlePadding: const EdgeInsets.all(8.0),
              searchCursorColor: Colors.pinkAccent,
              searchInputDecoration:
                  const InputDecoration(hintText: 'Search...'),
              isSearchable: true,
              title: const Text('Select your language'),
              onValuePicked: (language) {
                if (widget.useSelectorState) {
                  setState(() => {selectedLanguage = language});
                }
                widget.onSelect(language);
              },
              itemBuilder: _buildDialogItem,
            ),
          ),
        );

    return InkWell(
      onTap: showPicker,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                selectedLanguage?.name ?? "Select your language",
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDialogItem(Language language) => Row(
        children: <Widget>[
          Text(language.name),
          const SizedBox(width: 8.0),
          Flexible(child: Text("(${language.isoCode})"))
        ],
      );
}
