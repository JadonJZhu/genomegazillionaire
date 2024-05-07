import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/process_description_view.dart';

class ProcessAvatarButton extends StatelessWidget {
  const ProcessAvatarButton({
    super.key,
    required this.process,
  });

  final Process process;

  void pushDescriptionView(BuildContext context, Process process) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProcessDescriptionView(process: process);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushDescriptionView(context, process),
      child: Container(
        height: 110,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.asset(
            process.avatarFilePath,
          ),
        ),
      ),
    );
  }
}
