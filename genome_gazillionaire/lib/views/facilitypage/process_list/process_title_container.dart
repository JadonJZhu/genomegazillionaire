import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class ProcessTitleContainer
 extends StatelessWidget {
  const ProcessTitleContainer
  (this.processTitle, {super.key});

  final String processTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        processTitle,
        style: titleStyle,
      ),
    );
  }
}
