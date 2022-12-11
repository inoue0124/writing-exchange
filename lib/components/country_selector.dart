import 'package:circle_flags/circle_flags.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountrySelector extends StatefulWidget {
  const CountrySelector({
    super.key,
    required this.onSelect,
    this.defaultSelection,
    this.useSelectorState = true,
  });

  final Function onSelect;
  final Country? defaultSelection;
  final bool useSelectorState;

  @override
  CountrySelectorState createState() => CountrySelectorState();
}

class CountrySelectorState extends State<CountrySelector> {
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    if (widget.defaultSelection != null) {
      selectedCountry = widget.defaultSelection;
    }

    void showPicker() => showCountryPicker(
          context: context,
          showPhoneCode: false,
          onSelect: (country) {
            if (widget.useSelectorState) {
              setState(() => {selectedCountry = country});
            }
            widget.onSelect(country);
          },
        );

    return InkWell(
      onTap: showPicker,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (selectedCountry != null)
                CircleFlag(
                  selectedCountry!.countryCode,
                  size: 24,
                ),
              const SizedBox(width: 8),
              Text(
                selectedCountry?.name ?? "Select your country",
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
