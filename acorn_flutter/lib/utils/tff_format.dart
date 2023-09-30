import 'package:flutter/material.dart';

import 'theme.dart';

class TffFormat extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final Color tffColor1;
  final Color tffColor2;

  const TffFormat({
    required this.hintText,
    required this.onChanged,
    required this.tffColor1,
    required this.tffColor2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5.0),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 16,
            color: tffColor1),
        fillColor: tffColor2,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: tffColor2,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: tffColor2,
            width: 1.0,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}

class ConfirmText extends StatelessWidget {
  final String? confirmText;
  final Color confirmColor;

  const ConfirmText({
    required this.confirmText,
    required this.confirmColor,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: confirmColor),
      ),
      child: Center(
        child: Text(
          confirmText??"",
          style: TextStyle(
            fontSize: 20,
            color: confirmColor,
          ),
        ),
      ),
    );
  }
}

class HintText extends StatelessWidget {
  final String hintText;

  const HintText({
    required this.hintText,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        hintText,
        textAlign: TextAlign.left,
        style: AcornTheme.textTheme.headlineMedium,
        ),
      );
  }
}

class FormatGrey extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;

  const FormatGrey({
    required this.controller,
    required this.hintText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5.0),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black54),
        fillColor: Colors.grey[200],
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}

class FormatGreyEnable extends StatelessWidget {
  final bool enabled;
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;

  const FormatGreyEnable({
    required this.enabled,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5.0),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black54),
        fillColor: Colors.grey[200],
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}