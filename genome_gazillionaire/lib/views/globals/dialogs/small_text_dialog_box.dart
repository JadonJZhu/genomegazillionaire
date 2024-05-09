import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class SmallTextDialogBox extends StatelessWidget {
  const SmallTextDialogBox({
    super.key,
    this.backgroundColor = const Color.fromARGB(255, 188, 255, 112),
    this.borderColor = const Color.fromARGB(255, 200, 229, 168),
    required this.text,
  });

  const SmallTextDialogBox.deal({
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
        height: 250,
        width: 300,
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text,
            const Spacer(),
            OrangeElevatedButton(text: "Done", onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
