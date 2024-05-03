import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_block.dart';

class ProcessColumn extends StatelessWidget {
  const ProcessColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProcessBlock(),
          ProcessBlock(),
        ],
      ),
    );
  }
}
