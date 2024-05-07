import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class OrangeElevatedButton extends StatelessWidget {
  const OrangeElevatedButton(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Text(text, style: subtitleStyle),
    );
  }
}
