import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/deal.dart';
import 'package:genome_gazillionaire/models/entity.dart';
import 'package:genome_gazillionaire/models/investor.dart';
import 'package:genome_gazillionaire/views/globals/buttons/orange_elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DescriptionView extends StatelessWidget {
  DescriptionView({super.key, required this.entity});

  final Entity entity;
  var backgroundColor = Colors.lightGreen[200];
  var borderColor = const Color.fromARGB(255, 188, 255, 112);

  @override
  Widget build(BuildContext context) {
    if (entity is Deal) {
      backgroundColor = Colors.orange[200];
      borderColor = Colors.orange;
    } else if (entity is Investor) {
      backgroundColor = Colors.yellow[200];
      borderColor = Colors.yellow;
    }
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          width: 10,
          color: borderColor,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      content: Container(
          height: 800,
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Text(
                entity.title,
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                child: ClipOval(
                  child: Image.asset(entity.avatarFilePath),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                entity.description,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              OrangeElevatedButton(
                text: "Done",
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          )),
    );
  }
}
