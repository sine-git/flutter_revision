// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class AminatedSemiCircle extends StatefulWidget {
  const AminatedSemiCircle({super.key});

  @override
  State<AminatedSemiCircle> createState() => _AminatedSemiCircleState();
}

extension on VoidCallback {
  Future<void> delayed(Duration duration) => Future.delayed(duration, this);
}

class _AminatedSemiCircleState extends State<AminatedSemiCircle>
    with TickerProviderStateMixin {
  late AnimationController _couterClockwiseRotationController;
  late Animation<double> _counterClockwiseRotationAnimation;
  late AnimationController _flipController;
  late Animation<double> _flipAnimation;
  @override
  void initState() {
    _couterClockwiseRotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _flipController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _counterClockwiseRotationAnimation = Tween<double>(begin: 0, end: -pi / 2)
        .animate(CurvedAnimation(
            parent: _couterClockwiseRotationController,
            curve: Curves.bounceOut));
    _flipAnimation = Tween<double>(begin: 0, end: pi).animate(
        CurvedAnimation(parent: _flipController, curve: Curves.bounceOut));
    _counterClockwiseRotationAnimation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _flipAnimation = Tween<double>(
                  begin: _flipAnimation.value, end: _flipAnimation.value + pi)
              .animate(CurvedAnimation(
                  parent: _flipController, curve: Curves.bounceOut));
          _flipController
            ..reset()
            ..forward();
        }
      },
    );

    _flipAnimation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _counterClockwiseRotationAnimation = Tween<double>(
                  begin: _counterClockwiseRotationAnimation.value,
                  end: _counterClockwiseRotationAnimation.value - pi / 2)
              .animate(CurvedAnimation(
                  parent: _couterClockwiseRotationController,
                  curve: Curves.bounceOut));
          _couterClockwiseRotationController
            ..reset()
            ..forward();
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _couterClockwiseRotationController.dispose();
    _flipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _couterClockwiseRotationController
      ..reset()
      ..forward.delayed(const Duration(seconds: 1));
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _couterClockwiseRotationController,
          builder: (context, child) => Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..rotateZ(_counterClockwiseRotationAnimation.value),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _flipController,
                  builder: (context, child) => Transform(
                    alignment: Alignment.centerRight,
                    transform: Matrix4.identity()
                      ..rotateY(_flipAnimation.value),
                    child: ClipPath(
                      clipper: HalfCircleClipper(side: CircleSide.left),
                      child: Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: _flipController,
                  builder: (context, child) => Transform(
                    alignment: Alignment.centerLeft,
                    transform: Matrix4.identity()
                      ..rotateY(_flipAnimation.value),
                    child: ClipPath(
                      clipper: HalfCircleClipper(side: CircleSide.right),
                      child: Container(
                        color: Colors.yellow,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum CircleSide { left, right }

extension ToPath on CircleSide {
  Path toPath(Size size) {
    final path = Path();
    late Offset offset;
    late bool clockWise;

    switch (this) {
      case CircleSide.left:
        path.moveTo(size.width, 0);
        offset = Offset(size.width, size.height);
        clockWise = false;
        break;

      case CircleSide.right:
        Offset(size.width, size.height);
        offset = Offset(0, size.height);
        clockWise = true;
        break;
    }
    path.arcToPoint(offset,
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: clockWise);
    path.close();
    return path;
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  final CircleSide side;
  HalfCircleClipper({
    required this.side,
  });

  @override
  Path getClip(Size size) => side.toPath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      // TODO: implement shouldReclip
      true;
}
