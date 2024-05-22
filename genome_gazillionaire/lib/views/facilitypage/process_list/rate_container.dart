import 'package:flutter/material.dart';

class RateContainer extends StatelessWidget {
  const RateContainer(
      {super.key, required this.subtitleStyle, required this.rate});

  final TextStyle subtitleStyle;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalClipper(),
      child: Container(
        // alignment: Alignment.center,
        // margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        // padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 30,
        width: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          color: Colors.lightGreen,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 138, 138, 138),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 0.2,
            ),
          ],
        ),
        child: CustomPaint(
          painter: ArrowContainerPainter(),
          child: Center(
              child: FractionalTranslation(
                  translation: const Offset(-0.05, 0),
                  child: Text("Rate: \$${rate.toStringAsFixed(0)}", style: subtitleStyle))),
        ),
      ),
    );
  }
}

class ArrowContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.orange;

    Path path = Path();
    path.lineTo(size.width * 0.9, 0); // Start at the top-right corner
    path.lineTo(
        size.width, size.height / 2); // Draw to the middle of the right side
    path.lineTo(
        size.width * 0.9, size.height); // Draw to the bottom-right corner
    path.lineTo(0.3, size.height); // Draw to the bottom-left corner
    path.lineTo(0.3, 0);
    path.close(); // Close the path to complete the shape

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 1, 0);
    path.arcToPoint(
      Offset(size.width * 1, size.height),
      radius: Radius.circular(size.width * 1),
      clockwise: false,
    );
    path.lineTo(0.3, size.height);
    path.lineTo(0.3, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
