import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';

// Custom Dropdown Button Widget
class CustomDropdownButton extends StatelessWidget {
  final String? selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  const CustomDropdownButton({
    super.key,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      alignment: Alignment.center,
      dropdownColor: const Color(0x99e6e6fa),
      borderRadius: BorderRadius.circular(15.0),
      onChanged: onChanged,
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: AcornTheme.textTheme.bodySmall, // Adjusted to use context for theme
          ),
        );
      }).toList(),
    );
  }
}

