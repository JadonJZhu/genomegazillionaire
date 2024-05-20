import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class SignedOverlay extends StatelessWidget {
  const SignedOverlay({
    super.key,
    required this.deal,
  });

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: deal.isPurchased,
      child: Transform.scale(
        scale: 1.3,
        child: Text(
            "Deal signed.",
            style: subtitleStyle),
      ),
    );
  }
}
