import 'package:flutter/material.dart';

class SmallTextDialogBox extends StatelessWidget {
  const SmallTextDialogBox({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 188, 255, 112),
    this.borderColor = const Color.fromARGB(255, 200, 229, 168),
    required this.text,
  });

  const SmallTextDialogBox.dealSeized({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 252, 202, 127),
    this.borderColor = Colors.orange,
    required this.text,
  });

  final Color backgroundColor;
  final Color borderColor;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          width: 10,
          color: borderColor,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 150,
        width: 200,
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: text,
      ),
    );
  }
}
