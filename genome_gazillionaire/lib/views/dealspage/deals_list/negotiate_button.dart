import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal.dart';

class NegotiateButton extends StatelessWidget {
  const NegotiateButton({super.key, required this.deal});

  final Deal deal;

  void pushNegotiation(BuildContext context, Deal deal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Text("NegotiationView");
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
