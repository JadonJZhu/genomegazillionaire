import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';

class ProcessDescriptionView extends StatelessWidget {
  const ProcessDescriptionView({super.key, required this.process});

  final Process process;

  @override
  Widget build(BuildContext context) {
    return Text(process.title);
  }
}
