import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class OrangeElevatedButton extends StatelessWidget {
  const OrangeElevatedButton(
      {super.key, required this.text, required this.onPressed, this.padding});

  final String text;
  final void Function()? onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, padding: padding),
      child: Text(text, style: subtitleStyle),
    );
  }
}
