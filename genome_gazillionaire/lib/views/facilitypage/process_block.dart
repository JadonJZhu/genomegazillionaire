// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/facilitypage/rate_container.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessBlock extends StatelessWidget {
  ProcessBlock({
    super.key,
    required this.process,
    required this.completeProcess,
    required this.hireManager,
  });

  final Process process;

  final titleStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );

  final subtitleStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.white,
  );

  final void Function(Process) completeProcess;
  final void Function(Process) hireManager;

  @override
  Widget build(BuildContext context) {
    final String buttonText = process.isPurchased
        ? "\$${process.moneyPerClick} per click"
        : "Buy: \$${process.cost}";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("../../../assets/images/1.png"),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                process.name,
                style: titleStyle,
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => completeProcess(process),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: Text(buttonText, style: subtitleStyle),
                ),
                RateContainer(
                    subtitleStyle: subtitleStyle,
                    rate: process.effectivePerSecond)
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: process.hasManager ? null : () => hireManager(process),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Opacity(
                opacity: process.hasManager ? 1.0 : 0.5,
                child: Image.asset(
                  "../../../assets/images/1.png",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
