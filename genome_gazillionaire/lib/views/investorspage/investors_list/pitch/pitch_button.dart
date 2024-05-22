import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/pitch_dialog.dart';

class PitchButton extends StatelessWidget {
  const PitchButton(
      {super.key, required this.investor, required this.signInvestor});

  final Investor investor;

  final void Function(Investor) signInvestor;

  void pushPitch(BuildContext context, Investor investor) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PitchDialog(investor: investor, signInvestor: signInvestor);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushPitch(context, investor),
      child: Container(
        height: 110,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.asset(
            "../../../../assets/images/pitch.png",
          ),
        ),
      ),
    );
  }
}
