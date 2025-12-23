import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';

//Used for the Add Term Buttons on Input Pages.
class ShowcaseButton extends StatelessWidget {
  final String label;
  final Widget page;

  const ShowcaseButton ({
    required this.label,
    required this.page,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Text(label,
        style: const TextStyle(
            fontSize: 16,
            color: Colors.amberAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}