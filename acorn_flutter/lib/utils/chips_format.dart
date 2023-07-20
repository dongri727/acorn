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

  final List<String> filterFilter;
  final String filterData;

  const FilterFormat({super.key,
    required this.filterFilter,
    required this.filterData,
  });

  @override
  FilterFormatState createState() => FilterFormatState();
}

class FilterFormatState extends State<FilterFormat> {

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.filterData),
      selected: widget.filterFilter.contains(widget.filterData),
      onSelected: (bool value) {
        setState(() {
          if (value) {
            if (!widget.filterFilter.contains(
                widget.filterData)) {
              widget.filterFilter
                  .add(widget.filterData);
            }
          } else {
            widget.filterFilter.removeWhere((filterFilter) => filterFilter == widget.filterData);
          }
        });
      },
    );
  }
}