import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
      const Text('Data has been temporarily stored.'),
      content: const Text(
          'They are not uploaded yet. please continue to fill in the other fields.'),
      actions: <Widget>[
        GestureDetector(
          child: const Text('OK'),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}