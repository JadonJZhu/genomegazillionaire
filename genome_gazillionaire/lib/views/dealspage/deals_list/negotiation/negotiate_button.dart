import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/negotiation_dialog.dart';

class NegotiateButton extends StatelessWidget {
  const NegotiateButton(
      {super.key, required this.deal, required this.signDeal});

  final Deal deal;

  final void Function(Deal) signDeal;

  void pushNegotiation(BuildContext context, Deal deal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return NegotiationDialog(deal: deal, signDeal: signDeal);
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
            "../../../../assets/images/negotiate.png",
          ),
        ),
      ),
    );
  }
}
