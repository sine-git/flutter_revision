import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueCustomPainter extends StatefulWidget {
  const BlueCustomPainter({super.key});

  @override
  State<BlueCustomPainter> createState() => _BlueCustomPainter();
}

class _BlueCustomPainter extends State<BlueCustomPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blue custom painter"),
      ),
      body: const Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: BlueCusomPainter(),
          ),
        ),
      ),
    );
  }
}

class BlueCusomPainter extends CustomPainter {
  const BlueCusomPainter();

  @override
  void paint(Canvas canvas, Size size) {
    Paint bluePaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.blue
      ..strokeWidth = 2;

    Paint redPaint = Paint()..color = Colors.red;
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 100,
            height: 100),
        bluePaint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, redPaint);
    canvas.drawOval(const Rect.fromLTWH(0, 20, 100, 200), redPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
