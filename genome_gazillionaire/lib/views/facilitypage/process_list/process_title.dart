import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessTitle extends StatelessWidget {
  ProcessTitle(this.processTitle, {super.key});

  final String processTitle;

  final titleStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        processTitle,
        style: titleStyle,
      ),
    );
  }
}
