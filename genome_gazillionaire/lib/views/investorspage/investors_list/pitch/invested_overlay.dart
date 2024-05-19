import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class InvestedOverlay extends StatelessWidget {
  const InvestedOverlay({
    super.key,
    required this.investor,
  });

  final Investor investor;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: investor.isPurchased,
      child: Transform.scale(
        scale: 1.3,
        child: Text(
            "Investor successfully signed.",
            style: subtitleStyle),
      ),
    );
  }
}
