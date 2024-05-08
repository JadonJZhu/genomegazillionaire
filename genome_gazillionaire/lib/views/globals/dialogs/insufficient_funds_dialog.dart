import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/small_text_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class InsufficientFundsDialog extends StatelessWidget {
  const InsufficientFundsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SmallTextDialogBox(
        text: Text(
          "Insufficient funds!",
          style: blackSubtitleStyle,
          textAlign: TextAlign.center,
          textScaler: const TextScaler.linear(1.5),
        ),
      );
  }
}