import 'package:flutter/material.dart';

class ContainerDivider extends StatelessWidget {
  const ContainerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3,
      width: 225,
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
