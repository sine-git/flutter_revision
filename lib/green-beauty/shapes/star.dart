import 'package:flutter/material.dart';

class Star extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    final double xScaling = size.width / 512;
    final double yScaling = size.height / 512;
    path.lineTo(512 * xScaling, 256 * yScaling);
    path.cubicTo(
      370.6 * xScaling,
      256 * yScaling,
      256 * xScaling,
      370.6 * yScaling,
      256 * xScaling,
      512 * yScaling,
    );
    path.cubicTo(
      256 * xScaling,
      370.6 * yScaling,
      141.4 * xScaling,
      256 * yScaling,
      0 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      141.4 * xScaling,
      256 * yScaling,
      256 * xScaling,
      141.4 * yScaling,
      256 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      256 * xScaling,
      141.4 * yScaling,
      370.6 * xScaling,
      256 * yScaling,
      512 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      512 * xScaling,
      256 * yScaling,
      512 * xScaling,
      256 * yScaling,
      512 * xScaling,
      256 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
