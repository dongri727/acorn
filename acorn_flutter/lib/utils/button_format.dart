import 'package:flutter/material.dart';

class ButtonFormat extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonFormat ({
    required this.label,
    required this.onPressed,

    Key? key,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Text(label,
        style: const TextStyle(
          color: Colors.white),
        ),
    );
  }
}

class RadioButtonFormat extends StatefulWidget {
  final List<String> options;
  final String? initialOption;
  final ValueChanged<String?> onChanged;

  const RadioButtonFormat({
    Key? key,
    required this.options,
    this.initialOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RadioButtonFormat> createState() => _RadioButtonFormatState();
}

class _RadioButtonFormatState extends State<RadioButtonFormat> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialOption;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        return ListTile(
          textColor: Colors.white,
          title: Text(option),
          leading: Radio<String>(
            activeColor: Colors.yellow,
            value: option,
            groupValue: _selectedOption,
            onChanged: (String? value) {
              setState(() {
                _selectedOption = value;
              });
              widget.onChanged(value);
            },
          ),
        );
      }).toList(),
    );
  }
}

class RadioButtonRowFormat extends StatefulWidget {
  final List<String> options;
  final String? initialOption;
  final ValueChanged<String?> onChanged;

  const RadioButtonRowFormat({
    Key? key,
    required this.options,
    this.initialOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RadioButtonRowFormat> createState() => _RadioButtonRowFormatState();
}

class _RadioButtonRowFormatState extends State<RadioButtonRowFormat> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialOption;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.options.map((option) {
        return Expanded(
          child: ListTile(
            textColor: Colors.white,
            title: Text(option),
            leading: Radio<String>(
              activeColor: Colors.yellow,
              value: option,
              groupValue: _selectedOption,
              onChanged: (String? value) {
                setState(() {
                  _selectedOption = value;
                });
                widget.onChanged(value);
              },
            ),
          ),
        );
      }).toList(),
    );
  }
}