import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/negotiation/container_divider.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/large_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/maintain_ownership_dialog.dart';

class PitchDialog extends StatefulWidget {
  final Investor investor;
  final void Function(Investor) signInvestor;

  const PitchDialog(  
      {super.key, required this.investor, required this.signInvestor});

  @override
  State<PitchDialog> createState() =>
      _PitchDialogState();
}

class _PitchDialogState extends State<PitchDialog> {
  _PitchDialogState();
  final user = userData;

  Random random = Random();
  int diceImageIndex = 0;
  int counter = 0;
  final List<String> diceImages = [
    '../../../../assets/images/dice_1.png',
    '../../../../assets/images/dice_2.png',
    '../../../../assets/images/dice_3.png',
    '../../../../assets/images/dice_4.png',
    '../../../../assets/images/dice_5.png',
    '../../../../assets/images/dice_6.png'
  ];

  void rollDice() {
    Timer.periodic(const Duration(milliseconds: 80), (timer) {
      counter++;
      setState(() {
        diceImageIndex = random.nextInt(6);
      });

      if (counter >= 12) {
        if (diceImageIndex + 1 >= widget.investor.minDiceRoll) {
          widget.signInvestor(widget.investor);
        } else {
          widget.investor.decTries();
          if (widget.investor.triesLeft == 0) {
            widget.signInvestor(widget.investor);
          }
        }
        setState(() {
          counter = 0;
        });
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LargeDialogBox(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      borderColor: const Color.fromARGB(255, 123, 123, 123),
      child: Column(
        children: [
          Text(
            widget.investor.title,
            style: titleStyle,
            textScaler: const TextScaler.linear(1.2),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContainerDivider(),
          const SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: Text(
              widget.investor.investmentDescription,
              style: blackSubtitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          /* ClipOval(
            child: SizedBox(
              height: 200,
              child: Image.asset('../../../../assets/images/dice.png'),
            ),
          ),
          */
          Image.asset(
            diceImages[diceImageIndex],
            height: 200,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: Text(
              "You will need a minimum dice roll of ${widget.investor.minDiceRoll}, and you have ${widget.investor.triesLeft} tries left.",
              style: blackSubtitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrangeElevatedButton(
                  text: "Sign",
                  onPressed: () {
                    if (user.percentOwned - widget.investor.profitsPercent < 51) {
                      Navigator.pop(context);
                      pushMaintainOwnershipDialog(context);
                    } else if (widget.investor.triesLeft != 0) {
                      rollDice();
                      /* if (diceImageIndex + 1 >= investor.minDiceRoll) {
                      Timer.periodic(const Duration(seconds: 4), (timer) {
                        signInvestor(investor);
                        timer.cancel();
                      });
                    }
                    else 
                      investor.decTries(); */
                    }
                  }),
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

// class PitchDialog extends StatefulWidget {
//   PitchDialog({super.key, required this.investor, required this.signInvestor});
//   final Investor investor;
//   final void Function(Investor) signInvestor;

//   //final user = userData;
//   /* 
//   int diceImageIndex = 0;
//   final List<String> diceImages = [
//     '../../../../assets/images/dice_1.png', 
//     '../../../../assets/images/dice_2.png',
//     '../../../../assets/images/dice_3.png',
//     '../../../../assets/images/dice_4.png',
//     '../../../../assets/images/dice_5.png',
//     '../../../../assets/images/dice_6.png'];

//   void rollDice()
//   {

//   } */

//   @override
//   _PitchDialogState createState() => _PitchDialogState();
// }

// class _PitchDialogState() extends State<PitchDialog>
// {
//   final user = userData;

//   @override
//   Widget build(BuildContext context) {
//     return Text("contents of pitch dialog");
//   }
// }
//     /* LargeDialogBox(
//       backgroundColor: const Color.fromARGB(255, 194, 194, 194),
//       borderColor: const Color.fromARGB(255, 123, 123, 123),
//       child: Column(
//         children: [
//           Text(
//             super.investor.title,
//             style: titleStyle,
//             textScaler: const TextScaler.linear(1.2),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           const ContainerDivider(),
//           const SizedBox(height: 30),
//           SizedBox(
//             width: 250, 
//             child: Text(
//               investor.investmentDescription,
//               style: blackSubtitleStyle,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           const SizedBox(height: 30),
//           /* ClipOval(
//             child: SizedBox(
//               height: 200,
//               child: Image.asset('../../../../assets/images/dice.png'),
//             ),
//           ),
//           */
//           Image.asset(
//             diceImages[diceImageIndex],
//             height: 200,
//           ),
//           const SizedBox(height: 30),
//           SizedBox(
//             width: 250, 
//             child: Text(
//               "You will need a minimum dice roll of ${investor.minDiceRoll}, and you have ${investor.triesLeft} tries left.",
//               style: blackSubtitleStyle,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           //NegotiationLoopholeDescription(deal: deal),
//           const Spacer(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               OrangeElevatedButton(
//                 text: "Sign",
//                 onPressed: () => signInvestor(investor),
//               ),
//               OrangeElevatedButton(
//                 text: "Back out",
//                 onPressed: () => Navigator.pop(context),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ); */
  

