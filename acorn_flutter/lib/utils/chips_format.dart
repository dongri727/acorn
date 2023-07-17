import 'package:flutter/material.dart';

class ChipsFormat extends StatefulWidget {

  final List<String> chipsFilter;
  final String chipsData;

  const ChipsFormat({super.key,
    required this.chipsFilter,
    required this.chipsData,
  });

  @override
  ChipsFormatState createState() => ChipsFormatState();
}

class ChipsFormatState extends State<ChipsFormat> {

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(widget.chipsData),
        selected: widget.chipsFilter.contains(widget.chipsData),
        onSelected: (bool value) {
          setState(() {
            if (value) {
              widget.chipsFilter.clear();
              widget.chipsFilter.add(widget.chipsData);
            } else {
              widget.chipsFilter.removeWhere((filter) => filter == widget.chipsData);
            }
          });
        },
    );
  }
}