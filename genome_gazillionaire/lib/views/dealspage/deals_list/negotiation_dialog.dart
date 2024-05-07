import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class NegotiationDialog extends StatelessWidget {
  const NegotiationDialog({super.key, required this.deal});

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return DialogBox(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      borderColor: const Color.fromARGB(255, 123, 123, 123),
      child: Column(
        children: [
          Text(
            deal.title,
            style: titleStyle,
            textScaler: const TextScaler.linear(1.2),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 3,
            width: 225,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
