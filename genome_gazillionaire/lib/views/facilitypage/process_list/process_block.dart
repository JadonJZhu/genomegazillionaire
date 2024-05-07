// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/manager_button.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/process_title.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/rate_container.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class ProcessBlock extends StatelessWidget {
  ProcessBlock({
    super.key,
    required this.process,
    required this.completeProcess,
    required this.hireManager,
  });

  final Process process;

  final void Function(Process) completeProcess;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    final String buttonText = process.isPurchased
        ? "\$${process.moneyPerClick} per click"
        : "Buy: \$${process.cost}";

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AvatarButton(
            entity: process
          ),
          Column(
            children: [
              ProcessTitle(process.title),
              Row(
                children: [
                  OrangeElevatedButton(
                    onPressed: () => completeProcess(process),
                    text: buttonText,
                  ),
                  RateContainer(
                      subtitleStyle: subtitleStyle,
                      rate: process.effectivePerSecond)
                ],
              ),
            ],
          ),
          ManagerButton(process: process, hireManager: hireManager)
        ],
      ),
    );
  }
}
