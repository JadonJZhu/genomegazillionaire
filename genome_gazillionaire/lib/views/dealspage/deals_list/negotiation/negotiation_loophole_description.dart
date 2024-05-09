import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class NegotiationLoopholeDescription extends StatelessWidget {
  const NegotiationLoopholeDescription({super.key, required this.deal});

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "There is a ",
              style: blackSubtitleStyle,
            ),
            TextSpan(
              text: "${deal.effectiveLoopholePercent}% chance ",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: const Color.fromARGB(255, 184, 111, 0),
              ),
            ),
            TextSpan(
              text:
                  "that this corporation will find a legal loophole and seize ownership of this operation for ",
              style: blackSubtitleStyle,
            ),
            TextSpan(
              text: "${deal.loopholeOwnershipHours} hours",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: const Color.fromARGB(255, 184, 111, 0),
              ),
            ),
            TextSpan(
              text: ". Decrease this chance by investing in your legal team.",
              style: blackSubtitleStyle,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
