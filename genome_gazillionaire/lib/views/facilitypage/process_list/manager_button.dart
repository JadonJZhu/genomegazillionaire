import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';

class ManagerButton extends StatelessWidget {
  const ManagerButton(
      {super.key, required this.process, required this.hireManager});

  final Process process;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: process.hasManager ? null : () => hireManager(process),
      child: Container(
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
    );
  }
}
