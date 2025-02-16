import 'package:flutter/material.dart';

class MasterPainterPage extends StatefulWidget {
  const MasterPainterPage({super.key});

  @override
  State<MasterPainterPage> createState() => _MasterPainterPageState();
}

class _MasterPainterPageState extends State<MasterPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Master painter"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MasterPainter(),
          ),
        ),
      ),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..color = Colors.blue;

    /* canvas.drawLine(const Offset(0, 0), Offset(size.width, 0), paint);
    canvas.drawCircle(Offset.zero, 30, paint);
    canvas.drawCircle(Offset(size.width, 0), 30, paint);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: size.width / 2,
            height: size.height / 2),
        paint); */
    /*  canvas.drawRect(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 50),
        paint); */

    //canvas.drawOval(const Rect.fromLTWH(10, 50, 100, 200), paint);
/*     canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 100,
            height: 200),
        paint); */

    //canvas.drawPath(Path()..addRect(Offset.zero & size / 2), paint);
    /* canvas.drawPath(
        Path()
          ..lineTo(size.width / 2, size.height / 2)
          ..lineTo(size.width / 2, 0),
        paint); */
    Rect rect = const Rect.fromLTRB(10, 20, 100, 200);
    /* canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(20)), paint); */
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: const Radius.circular(20),
            bottomRight: const Radius.circular(20)),
        paint);
    /* canvas.drawDRRect(RRect.fromRectAndRadius(rect, const Radius.circular(20)),
        RRect.fromRectAndRadius(rect, const Radius.circular(20)), paint); */
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
