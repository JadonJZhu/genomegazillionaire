import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/container_divider.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/negotiation_loophole_description.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/large_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class NegotiationDialog extends StatelessWidget {
  NegotiationDialog({super.key, required this.deal, required this.signDeal});

  final Deal deal;
  final void Function(Deal) signDeal;

  final user = userData;

  @override
  Widget build(BuildContext context) {
    return LargeDialogBox(
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
          const ContainerDivider(),
          const SizedBox(height: 30),
          Text(
            deal.negotiationDescription,
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
          NegotiationLoopholeDescription(deal: deal),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrangeElevatedButton(
                text: "Sign",
                onPressed: () => signDeal(deal),
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
