import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/container_divider.dart';
//import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/negotiation_loophole_description.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/large_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class PitchDialog extends StatelessWidget {
  PitchDialog({super.key, required this.investor, required this.signInvestor});

  final Investor investor;
  final void Function(Investor) signInvestor;

  final user = userData;

  @override
  Widget build(BuildContext context) {
    return LargeDialogBox(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      borderColor: const Color.fromARGB(255, 123, 123, 123),
      child: Column(
        children: [
          Text(
            investor.title,
            style: titleStyle,
            textScaler: const TextScaler.linear(1.2),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContainerDivider(),
          const SizedBox(height: 30),
          Text(
            investor.investmentDescription,
            style: blackSubtitleStyle,
          ),
          const SizedBox(height: 30),
          ClipOval(
            child: SizedBox(
              height: 200,
              child: Image.asset('../../../../assets/images/1.png'),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "You will need a minimum dice roll of ${investor.minDiceRoll}, and you have ${investor.triesLeft} tries left.",
            style: blackSubtitleStyle,
          ),
          //NegotiationLoopholeDescription(deal: deal),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrangeElevatedButton(
                text: "Sign",
                onPressed: () => signInvestor(investor),
              ),
              OrangeElevatedButton(
                text: "Back out",
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
