import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/container_divider.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/negotiation_loophole_description.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/large_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class NegotiationDialog extends StatefulWidget {
  NegotiationDialog({super.key, required this.deal, required this.signDeal});

  final Deal deal;
  final void Function(Deal) signDeal;

  @override
  State<NegotiationDialog> createState() => _NegotiationDialogState();
}

class _NegotiationDialogState extends State<NegotiationDialog> {
  _NegotiationDialogState();
  final user = userData;
  double turns = 0;

  Random random = Random();

  void spinWheel() {
    int num = random.nextInt(7) + 1;
    setState(() {
      turns += 1 + num / 8;
    });

    if (num/8 <= widget.deal.baseLoopholePercent/100) {
      widget.deal.process.seizeProcess(widget.deal.loopholeOwnershipHours);
    } 

    Timer(const Duration(milliseconds: 1200), () {
      widget.signDeal(widget.deal);
      setState(() {
        turns = 0;
      });
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return LargeDialogBox(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      borderColor: const Color.fromARGB(255, 123, 123, 123),
      child: Column(
        children: [
          SizedBox(
            width: 250,
            child: Text(
              widget.deal.title,
              style: titleStyle,
              textAlign: TextAlign.center,
              textScaler: const TextScaler.linear(1.2),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContainerDivider(),
          const SizedBox(height: 30),
          SizedBox(
            width: 250, 
            child: Text(
              widget.deal.negotiationDescription,
              style: blackSubtitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 200, 
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: AnimatedRotation(
                    turns: turns, 
                    duration: const Duration(seconds: 1),
                    child: Image.asset('../../../../assets/images/wheel.png')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset('../../../../assets/images/pointer.png')
                ),
              ],
            ),
          ),
          NegotiationLoopholeDescription(deal: widget.deal),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrangeElevatedButton(
                text: "Sign",
                onPressed: () { 
                  if (!widget.deal.process.isPurchased || user.balance < widget.deal.cost || widget.deal.isPurchased) {
                    widget.signDeal(widget.deal); 
                  } else {
                    spinWheel();
                  }
                },
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
