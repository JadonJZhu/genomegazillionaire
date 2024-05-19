import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class OutOfTriesOverlay extends StatelessWidget {
  const OutOfTriesOverlay({
    super.key,
    required this.investor,
  });

  final Investor investor;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: investor.triesLeft == 0 && !investor.isPurchased,
      child: Transform.scale(
        scale: 1.3,
        child: Text(
            "No more tries left.",
            style: subtitleStyle),
      ),
    );
  }
}
