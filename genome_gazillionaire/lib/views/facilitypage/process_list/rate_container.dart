import 'package:flutter/material.dart';

class RateContainer extends StatelessWidget {
  const RateContainer(
      {super.key, required this.subtitleStyle, required this.rate});

  final TextStyle subtitleStyle;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 30,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 138, 138, 138),
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 0.2,
              ),
            ],
          ),
          child: Text("Rate: \$$rate", style: subtitleStyle)),
    );
  }
}
