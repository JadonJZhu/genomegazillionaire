import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';
import 'package:genome_gazillionaire/views/globals/orange_elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessDescriptionView extends StatelessWidget {
  const ProcessDescriptionView({super.key, required this.process});

  final Process process;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
              width: 10, color: Color.fromARGB(255, 188, 255, 112))),
      contentPadding: EdgeInsets.zero,
      content: Container(
          height: 800,
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.lightGreen[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Text(
                process.title,
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                child: ClipOval(
                  child: Image.asset(process.avatarFilePath),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                process.description,
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
