import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/negotiate_button.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';

class DealBlock extends StatelessWidget {
  const DealBlock({super.key, required this.deal, required this.signDeal});

  final Deal deal;

  final void Function(Deal) signDeal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 400,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AvatarButton(entity: deal),
                Text(deal.title),
                NegotiateButton(deal: deal, signDeal: signDeal)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
