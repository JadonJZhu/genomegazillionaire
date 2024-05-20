import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/small_text_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class MaintainOwnershipDialog extends StatelessWidget {
  const MaintainOwnershipDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SmallTextDialogBox(
        text: Text(
          "Insufficient stocks. You must retain at least 51% of your company profits to maintain ownership.",
          style: blackSubtitleStyle,
          textAlign: TextAlign.center,  
          textScaler: const TextScaler.linear(1.5),
        ),
      );
  }
}

void pushMaintainOwnershipDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => const MaintainOwnershipDialog());
}
