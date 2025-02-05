import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCustomPainter extends StatefulWidget {
  const AppCustomPainter({super.key});

  @override
  State<AppCustomPainter> createState() => _AppCustomPainterState();
}

class _AppCustomPainterState extends State<AppCustomPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomPaint(
              painter: DemoPainter(), child: Text("This is pack man"))),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 250,
            height: 250),
        0.5,
        2 * 3.14 - 0.8,
        true,
        paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
