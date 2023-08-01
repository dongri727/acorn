import 'package:flutter/material.dart';

class ChoiceFormat extends StatefulWidget {

  final Function(String, dynamic) onSelectionChanged;

  final String choiceKey;
  final dynamic choiceValue;

  final bool isSelected;

  const ChoiceFormat({super.key,

    required this.onSelectionChanged,

    required this.choiceKey,
    required this.choiceValue,

    required this.isSelected,
  });

  @override
  ChoiceFormatState createState() => ChoiceFormatState();
}

class ChoiceFormatState extends State<ChoiceFormat> {

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(widget.choiceKey),
        selected: widget.isSelected,
        onSelected: (_) {
          widget.onSelectionChanged(widget.choiceKey, widget.choiceValue);

        },
    );
  }
}


class FilterFormat extends StatefulWidget {

  final List<String> filteredKeys;
  final List<dynamic> filteredValues;
  final String filterKey;
  final dynamic filterValue;

  const FilterFormat({super.key,
    required this.filteredKeys,
    required this.filteredValues,
    required this.filterKey,
    required this.filterValue,
  });

  @override
  FilterFormatState createState() => FilterFormatState();
}

class FilterFormatState extends State<FilterFormat> {

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.filterKey),
      selected: widget.filteredKeys.contains(widget.filterKey),
      onSelected: (bool value) {
        setState(() {
          if (value) {
            if (!widget.filteredKeys.contains(widget.filterKey)) {
              widget.filteredKeys
                  .add(widget.filterKey);
            }
            if (!widget.filteredValues.contains(widget.filterValue)) {
              widget.filteredValues.add(widget.filterValue);
            }
          } else {
            widget.filteredKeys.removeWhere((key) => key == widget.filterKey);
            widget.filteredValues.removeWhere((value) => value == widget.filterValue);
          }
          // Notify the parent widget that the selection has changed.
          //widget.onSelected();
        });
      },
    );
  }
}
