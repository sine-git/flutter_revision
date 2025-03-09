import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BezierCurvesPage extends StatefulWidget {
  const BezierCurvesPage({super.key});

  @override
  State<BezierCurvesPage> createState() => BezierCurvesPageState();
}

class BezierCurvesPageState extends State<BezierCurvesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 400,
          height: 400,
          child: CustomPaint(
            painter: CubicBezierCurve(),
          ),
        ),
      ),
    );
  }
}

class QuadraticBezierCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint bluePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Offset start = Offset(0, size.height);
    //Offset control = Offset(size.width / 2, size.height / 2);
    Offset control =
        Offset(size.width - size.width / 2, size.height / 2 + size.height / 3);
    Offset end = Offset(size.width / 2, size.height / 2);

    Path path = Path();
    path.moveTo(start.dx, start.dy);
    path.quadraticBezierTo(control.dx - 10, control.dy - 20, end.dx, end.dy);
    canvas.drawPath(path, bluePaint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class CubicBezierCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint bluePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Offset start = Offset(0, size.height);
    Offset control1 = Offset(
        size.width - size.width / 2 + 20, size.height / 2 + size.height / 3);
    //Offset control2 = Offset(size.width / 2, size.height / 2);
    //Offset control1 = Offset(size.width / 2, size.height / 2);
    Offset control2 = Offset(2 * size.width / 3 - 15, size.height / 3);
    Offset end = Offset(size.width, 0);

    Path path = Path();
    path.moveTo(start.dx, start.dy);
    path.cubicTo(
        control1.dx, control1.dy, control2.dx, control2.dy, end.dx, end.dy);
    canvas.drawPath(path, bluePaint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
