import 'dart:math';

import 'package:flutter/material.dart';

class NormalCustomPainter extends StatefulWidget {
  const NormalCustomPainter({super.key});

  @override
  State<NormalCustomPainter> createState() => _NormalCustomPainterState();
}

class _NormalCustomPainterState extends State<NormalCustomPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          width: 200,
          height: 200,
          //alignment: Alignment.topLeft,
          child: CustomPaint(
            painter: RoundedCurve(),
            /*   child: Container(
              //color: Colors.blue,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              width: 200,
              height: 200,
            ), */
          ),
        ),
      ),
    );
  }
}

class RoundedCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    //..strokeCap = StrokeCap.round;
    Path path = Path();
    //path.moveTo(0, size.height);

    // Pour faire un arc
    /*  path.arcToPoint(Offset(size.width / 2, size.height / 2),
        clockwise: true,
        radius: Radius.circular(
          size.width / 2,
        )); */

    path.moveTo(0, size.height); //
    path.quadraticBezierTo(122.48, 170, 132.48, 147.63);
    path.quadraticBezierTo(132.48, 147.63, 107.15, 0.23);
    /*  path.arcToPoint(const Offset(132.48, 147.63),
        radius: const Radius.elliptical(20, 20), clockwise: false); */
    //path.lineTo(size.width, size.height / 2);
    //path.close();
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
