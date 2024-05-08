import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class ManagerButton extends StatelessWidget {
  const ManagerButton(
      {super.key, required this.process, required this.hireManager});

  final Process process;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Opacity(
              opacity: process.hasManager ? 1.0 : 0.5,
              child: Image.asset(
                process.avatarFilePath,
              ),
            ),
          ),
        ),
        Visibility(
          visible: !process.hasManager,
          child: Transform.scale(
            scale: 0.8,
            child: OrangeElevatedButton(
              text: "\$${process.managerCost}",
              onPressed: process.isPurchased ? () => hireManager(process) : null,
              elevation: 0
            ),
          ),
        )
      ],
    );
  }
}
