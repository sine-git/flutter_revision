// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedCustomPainter extends StatefulWidget {
  const AnimatedCustomPainter({super.key});

  @override
  State<AnimatedCustomPainter> createState() => _AnimatedCustomPainterState();
}

class _AnimatedCustomPainterState extends State<AnimatedCustomPainter>
    with TickerProviderStateMixin {
  late AnimationController _sidesController;
  late AnimationController _radiusController;
  late AnimationController _rotationController;
  late Animation<int> _sidesAnimation;
  late Animation<double> _radiusAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    _sidesController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _radiusController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _sidesAnimation = IntTween(begin: 3, end: 10).animate(_sidesController);
    _rotationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 32));

    _sidesAnimation = IntTween(begin: 3, end: 10).animate(_sidesController);
    _radiusAnimation = Tween<double>(begin: 20, end: 250)
        .chain(CurveTween(curve: Curves.bounceInOut))
        .animate(_radiusController);
    _rotationAnimation = Tween<double>(begin: 0, end: 2 * pi)
        .chain(CurveTween(curve: Curves.bounceInOut))
        .animate(_rotationController);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _sidesController.dispose();
    _radiusController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    _sidesController.repeat(reverse: true);
    _radiusController.repeat(reverse: true);
    _rotationController.repeat(reverse: true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge(
              [_sidesController, _radiusAnimation, _rotationController]),
          builder: (context, child) => Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..rotateX(_rotationAnimation.value)
              ..rotateX(_rotationAnimation.value)
              ..rotateX(_rotationAnimation.value),
            child: CustomPaint(
              painter: PolygonePainter(sides: _sidesAnimation.value),
              child: SizedBox(
                width: _radiusAnimation.value,
                height: _radiusAnimation.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PolygonePainter extends CustomPainter {
  int sides;
  PolygonePainter({
    required this.sides,
  });
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path = Path();
    final angle = 2 * pi / sides;
    final angles = List.generate(sides, (index) => index * angle);
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    path.moveTo(center.dx + radius * cos(0), center.dy + radius * sin(0));
    for (var angle in angles) {
      path.lineTo(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
    }

    // [0, 90, 180, 270,]
    path.close();
    canvas.drawPath(path, paint);
    /*  final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke


      ..strokeCap = StrokeCap.round;
    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);
    final angle = (2 * pi) / sides;

    final angles = List.generate(
      sides,
      (index) => index * angle,
    );
    final radius = size.width / 2;
    path.moveTo(center.dx + radius * cos(0), center.dy + radius * sin(0));
    for (var angle in angles) {
      double x = center.dx + radius * cos(angle);
      double y = center.dy + radius * sin(angle);
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint); */
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate is PolygonePainter && oldDelegate.sides != sides;
  }
}
