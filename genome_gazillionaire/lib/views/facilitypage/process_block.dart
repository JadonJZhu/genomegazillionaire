// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/facilitypage/rate_container.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessBlock extends StatefulWidget {
  const ProcessBlock({super.key});

  @override
  State<ProcessBlock> createState() => _ProcessBlockState();
}

class _ProcessBlockState extends State<ProcessBlock> {
  final titleStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );
  final subtitleStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
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
                "Gene Selection",
                style: titleStyle,
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: Text("Buy \$\$\$", style: subtitleStyle),
                ),
                RateContainer(subtitleStyle: subtitleStyle)
              ],
            ),
          ],
        ),
        CircleAvatar(radius: 40, backgroundImage: AssetImage("../../../assets/images/1.png"),),
      ],
    );
  }
}
