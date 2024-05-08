import 'package:flutter/material.dart';

class LargeDialogBox extends StatelessWidget {
  const LargeDialogBox({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 188, 255, 112),
    this.borderColor = const Color.fromARGB(255, 200, 229, 168),
    required this.child,
  });

  final Color backgroundColor;
  final Color borderColor;
  final Widget child;

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
          height: 800,
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: child),
    );
  }
}
