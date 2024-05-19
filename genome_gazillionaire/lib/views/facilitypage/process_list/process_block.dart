// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/deal_data.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/manager_button.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/purchase_process_button.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/seized_overlay.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/process_title_container.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/rate_container.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';

class ProcessBlock extends StatelessWidget {
  ProcessBlock({
    super.key,
    required this.process,
    required this.processIndex,
    required this.purchaseProcess,
    required this.completeProcess,
    required this.hireManager,
  });

  final Process process;
  final int processIndex;

  final void Function(Process) purchaseProcess;
  final void Function(Process) completeProcess;
  final void Function(Process) hireManager;

  final dealList = dealData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: process.isPurchased && !process.isSeized ? 1.0 : 0.1,
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
                          text: "\$${process.effectiveMoneyPerClick} per click",
                          elevation: 0,
                        ),
                        SizedBox(width: 10),
                        RateContainer(
                            subtitleStyle: subtitleStyle,
                            rate: process.effectivePerSecond
                        )
                      ],
                    ),
                  ],
                ),
                ManagerButton(process: process, hireManager: hireManager)
              ],
            ),
          ),
        ),
        PurchaseProcessButton(
          process: process,
          purchaseProcess: purchaseProcess,
        ),
        SeizedOverlay(
            process: process, dealList: dealList, processIndex: processIndex),
      ],
    );
  }
}
