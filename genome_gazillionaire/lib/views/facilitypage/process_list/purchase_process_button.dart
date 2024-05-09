import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class PurchaseProcessButton extends StatelessWidget {
  const PurchaseProcessButton(
      {super.key, required this.process, required this.purchaseProcess});

  final Process process;
  final void Function(Process) purchaseProcess;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !process.isPurchased,
      child: Transform.scale(
        scale: 1.3,
        child: FractionalTranslation(
          translation: const Offset(0, 0.2),
          child: OrangeElevatedButton(
            onPressed: () => purchaseProcess(process),
            text: "${process.title}: \$${process.cost}",
          ),
        ),
      ),
    );
  }
}
