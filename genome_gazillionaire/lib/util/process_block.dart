import 'package:flutter/material.dart';

class ProcessBlock extends StatefulWidget {
  const ProcessBlock({super.key});

  @override
  State<ProcessBlock> createState() => _ProcessBlockState();
}

class _ProcessBlockState extends State<ProcessBlock> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 50),
        Column(
          children: [
            Text("Gene Selection"),
            Row(
              children: [
                Text("\$100"),
                Text("Button"),
              ],
            )
          ],
        ),
        CircleAvatar(radius: 40),
      ],
    );
  }
}
