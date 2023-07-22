import 'package:flutter/material.dart';

class ChoiceFormat extends StatefulWidget {

  final List<String> choiceFilter;
  final String choiceData;

  const ChoiceFormat({super.key,
    required this.choiceFilter,
    required this.choiceData,
  });

  @override
  ChoiceFormatState createState() => ChoiceFormatState();
}

class ChoiceFormatState extends State<ChoiceFormat> {

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(widget.choiceData),
        selected: widget.choiceFilter.contains(widget.choiceData),
        onSelected: (bool value) {
          setState(() {
            if (value) {
              widget.choiceFilter.clear();
              widget.choiceFilter.add(widget.choiceData);
            } else {
              widget.choiceFilter.removeWhere((filter) => filter == widget.choiceData);
            }
          });
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
        });
      },
    );
  }
}