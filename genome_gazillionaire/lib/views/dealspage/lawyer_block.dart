import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/user_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class LawyerBlock extends StatefulWidget {
  const LawyerBlock({super.key});

  @override
  State<LawyerBlock> createState() => _LawyerBlockState();
}

class _LawyerBlockState extends State<LawyerBlock> {
  final User user = userData;

  void hireLawyer() {
    setState(() {
      user.numLawyers++;
    });
  }

  List<Widget> generateLawyerIcons() {
    return List.generate(user.maxLawyers, (index) {
      return Image.asset('../../../assets/images/lawyer.png',
          height: 50,
          opacity:
              AlwaysStoppedAnimation(index + 1 <= user.numLawyers ? 1.0 : 0.3));
    });
  }

  @override
  Widget build(BuildContext context) {
    bool hasMaxLawyers = user.numLawyers == user.maxLawyers;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Legal Team",
          style: blackSubtitleStyle,
          textScaler: const TextScaler.linear(1.3),
        ),
        SizedBox(
          width: 325,
          child: Text(
            "Decrease the chance by 10% that a corporation seizes your process!",
            style: blackSubtitleStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Visibility(
          visible: !hasMaxLawyers,
          child: ElevatedButton(
            onPressed: hireLawyer,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 226, 131),
            ),
            child: Text(
              "Hire Lawyer (\$${user.lawyerPrice})",
              style: blackSubtitleStyle,
            ),
          ),
        ),
        Row(children: generateLawyerIcons()),
      ],
    );
  }
}
