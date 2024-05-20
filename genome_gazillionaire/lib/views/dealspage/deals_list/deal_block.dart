import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/negotiate_button.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/signed_overlay.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

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
          Opacity(
            opacity: deal.isPurchased ? 0.1 : 1.0,
            child: Container(
              width: 475,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarButton(entity: deal),
                  SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        Text(deal.title, style: titleStyle),
                        Text(
                          "${deal.process.title} profit: ${deal.multiplierValue}x",
                          style: blackSubtitleStyle,
                        ),
                        Text(
                          "Cost: \$${deal.cost}",
                          style: greenSubtitleTwoStyle,
                        ),
                      ],
                    ),
                  ),
                  NegotiateButton(deal: deal, signDeal: signDeal)
                ],
              ),
            ),
          ),
          SignedOverlay(
            deal: deal),
        ],
      ),
    );
  }
}
