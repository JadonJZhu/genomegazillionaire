import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/globals/buttons/avatar_button.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/invested_overlay.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/out_of_tries_overlay.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/pitch_button.dart';

class InvestorBlock extends StatelessWidget {
  InvestorBlock({super.key, required this.investor, required this.signInvestor});

  final Investor investor;
  final void Function(Investor) signInvestor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: (investor.triesLeft != 0) ? 1.0 : 0.1,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 475,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AvatarButton(entity: investor),
                      SizedBox(
                        width: 250,
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Text(investor.title, style: titleStyle),
                            Text(
                              "Offers \$${investor.offeredMoney} for",
                              style: blackSubtitleStyle,
                            ),
                            Text(
                              "${investor.profitsPercent}% of all profits",
                              style: orangeSubtitleTwoStyle,
                            ),
                          ],
                        ),
                      ),
                      PitchButton(investor: investor, signInvestor: signInvestor)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InvestedOverlay(
          investor: investor),
        OutOfTriesOverlay(
          investor: investor),
      ],
    );
  }
}
