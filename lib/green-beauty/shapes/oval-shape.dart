import 'package:flutter/material.dart';

class OvalShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    final double xScaling = size.width / 512;
    final double yScaling = size.height / 512;
    path.lineTo(256 * xScaling, 512.5 * yScaling);
    path.cubicTo(
      205.2 * xScaling,
      512.5 * yScaling,
      157.5 * xScaling,
      485.8 * yScaling,
      121.6 * xScaling,
      437.3 * yScaling,
    );
    path.cubicTo(
      85.7 * xScaling,
      388.9 * yScaling,
      65.9 * xScaling,
      324.5 * yScaling,
      65.9 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      65.9 * xScaling,
      187.5 * yScaling,
      85.7 * xScaling,
      123.1 * yScaling,
      121.5 * xScaling,
      74.69999999999999 * yScaling,
    );
    path.cubicTo(
      157.5 * xScaling,
      26.2 * yScaling,
      205.2 * xScaling,
      -0.5 * yScaling,
      256 * xScaling,
      -0.5 * yScaling,
    );
    path.cubicTo(
      306.8 * xScaling,
      -0.5 * yScaling,
      354.5 * xScaling,
      26.2 * yScaling,
      390.4 * xScaling,
      74.7 * yScaling,
    );
    path.cubicTo(
      426.29999999999995 * xScaling,
      123.1 * yScaling,
      446 * xScaling,
      187.5 * yScaling,
      446 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      446 * xScaling,
      324.5 * yScaling,
      426.2 * xScaling,
      388.9 * yScaling,
      390.4 * xScaling,
      437.3 * yScaling,
    );
    path.cubicTo(
      354.5 * xScaling,
      485.8 * yScaling,
      306.8 * xScaling,
      512.5 * yScaling,
      256 * xScaling,
      512.5 * yScaling,
    );
    path.cubicTo(
      256 * xScaling,
      512.5 * yScaling,
      256 * xScaling,
      512.5 * yScaling,
      256 * xScaling,
      512.5 * yScaling,
    );
    path.lineTo(256 * xScaling, 0.5 * yScaling);
    path.cubicTo(
      151.8 * xScaling,
      0.5 * yScaling,
      66.9 * xScaling,
      115.1 * yScaling,
      66.9 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      66.9 * xScaling,
      396.9 * yScaling,
      151.7 * xScaling,
      511.5 * yScaling,
      256 * xScaling,
      511.5 * yScaling,
    );
    path.cubicTo(
      360.2 * xScaling,
      511.5 * yScaling,
      445.1 * xScaling,
      396.9 * yScaling,
      445.1 * xScaling,
      256 * yScaling,
    );
    path.cubicTo(
      445.1 * xScaling,
      115.1 * yScaling,
      360.2 * xScaling,
      0.5 * yScaling,
      256 * xScaling,
      0.5 * yScaling,
    );
    path.cubicTo(
      256 * xScaling,
      0.5 * yScaling,
      256 * xScaling,
      0.5 * yScaling,
      256 * xScaling,
      0.5 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
