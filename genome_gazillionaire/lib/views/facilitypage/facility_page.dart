// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'process_block.dart';

class FacilityPage extends StatelessWidget {
  const FacilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genome Gazillionaire'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ProcessBlock(),
            ProcessBlock(),
          ],
        ),
      ),
    );
  }
}
