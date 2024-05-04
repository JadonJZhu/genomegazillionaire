import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_block.dart';

class ProcessList extends StatelessWidget {
  const ProcessList(
      {super.key, required this.processList, required this.completeProcess, required this.hireManager});

  final List<Process> processList;
  final void Function(Process) completeProcess;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: processList.length,
        itemBuilder: (context, index) => ProcessBlock(
          process: processList[index],
          completeProcess: completeProcess,
          hireManager: hireManager,
        ),
      ),
    );
  }
}
