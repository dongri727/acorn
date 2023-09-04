import 'package:flutter/material.dart';

class BlankTextFormat extends StatelessWidget {
  final String text;

  const BlankTextFormat({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB( 24, 8, 24, 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
