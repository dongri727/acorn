import 'package:flutter/material.dart';

typedef OnChoiceSelected = void Function(String choiceKey, int choiceId);

class ChoiceFormat extends StatefulWidget {

  final List<String> choiceList;
  final String choiceKey;
  final int choiceId;
  final OnChoiceSelected onChoiceSelected;



  const ChoiceFormat({super.key,

    required this.choiceList,
    required this.choiceKey,
    required this.choiceId,
    required this.onChoiceSelected,
  });

  @override
  ChoiceFormatState createState() => ChoiceFormatState();
}

class ChoiceFormatState extends State<ChoiceFormat> {

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(widget.choiceKey),
        selected: widget.choiceList.contains(widget.choiceKey),
        selectedColor: Colors.yellow,
        onSelected: (bool value) {
          setState(() {
            if (value) {
              widget.choiceList.clear();
              widget.choiceList.add(widget.choiceKey);
            } else {
              widget.choiceList.removeWhere((filter) => filter == widget.choiceKey);
            }
          });
          widget.onChoiceSelected(widget.choiceKey, widget.choiceId);

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
