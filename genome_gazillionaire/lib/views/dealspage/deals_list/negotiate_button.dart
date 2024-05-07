import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation_dialog.dart';

class NegotiateButton extends StatelessWidget {
  const NegotiateButton({super.key, required this.deal});

  final Deal deal;

  void pushNegotiation(BuildContext context, Deal deal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NegotiationDialog(deal: deal);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () => pushNegotiation(context, deal),
      child: Container(
        height: 110,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.asset(
            deal.avatarFilePath,
          ),
        ),
      ),
    );
  }
}