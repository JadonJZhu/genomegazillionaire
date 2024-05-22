import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class SeizedOverlay extends StatelessWidget {
  const SeizedOverlay({
    super.key,
    required this.process,
    required this.dealList,
    required this.processIndex,
  });

  final Process process;
  final List<Deal> dealList;
  final int processIndex;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: process.isSeized,
      child: Transform.scale(
        scale: 1.3,
        child: Text(
          "Seized by ${dealList[processIndex].title}!\nTime remaining: ${process.seizedFormattedTime}",
          style: subtitleStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
