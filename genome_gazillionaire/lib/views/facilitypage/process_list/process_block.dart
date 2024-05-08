// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/manager_button.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/process_title_container.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/rate_container.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class ProcessBlock extends StatelessWidget {
  const ProcessBlock({
    super.key,
    required this.process,
    required this.purchaseProcess,
    required this.completeProcess,
    required this.hireManager,
  });

  final Process process;

  final void Function(Process) purchaseProcess;
  final void Function(Process) completeProcess;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: process.isPurchased ? 1.0 : 0.1,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AvatarButton(entity: process),
                Column(
                  children: [
                    ProcessTitleContainer(process.title),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        OrangeElevatedButton(
                          onPressed: process.isPurchased
                              ? () => completeProcess(process)
                              : null,
                          text: "\$${process.moneyPerClick} per click",
                          elevation: 0,
                        ),
                        SizedBox(width: 10),
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
          ),
        ),
        Visibility(
          visible: !process.isPurchased,
          child: Transform.scale(
            scale: 1.3,
            child: FractionalTranslation(
                translation: Offset(0, 0.2),
                child: OrangeElevatedButton(
                    onPressed: () => purchaseProcess(process),
                    text: "${process.title}: \$${process.cost}")),
          ),
        ),
      ],
    );
  }
}
