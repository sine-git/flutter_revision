import 'package:flutter/material.dart';

class Polygone extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    final double xScaling = size.width / 512;
    final double yScaling = size.height / 512;
    path.lineTo(494.5 * xScaling, 238.5 * yScaling);
    path.cubicTo(
      494.5 * xScaling,
      238.5 * yScaling,
      439.4 * xScaling,
      109 * yScaling,
      439.4 * xScaling,
      109 * yScaling,
    );
    path.cubicTo(
      433.2 * xScaling,
      94.5 * yScaling,
      421.59999999999997 * xScaling,
      83.1 * yScaling,
      407 * xScaling,
      77.2 * yScaling,
    );
    path.cubicTo(
      407 * xScaling,
      77.2 * yScaling,
      276.5 * xScaling,
      24.5 * yScaling,
      276.5 * xScaling,
      24.5 * yScaling,
    );
    path.cubicTo(
      269.9 * xScaling,
      21.9 * yScaling,
      263 * xScaling,
      20.4 * yScaling,
      256 * xScaling,
      20.2 * yScaling,
    );
    path.cubicTo(
      249 * xScaling,
      20.4 * yScaling,
      242.1 * xScaling,
      21.8 * yScaling,
      235.5 * xScaling,
      24.5 * yScaling,
    );
    path.cubicTo(
      235.5 * xScaling,
      24.5 * yScaling,
      105 * xScaling,
      77.2 * yScaling,
      105 * xScaling,
      77.2 * yScaling,
    );
    path.cubicTo(
      90.4 * xScaling,
      83.1 * yScaling,
      78.7 * xScaling,
      94.5 * yScaling,
      72.6 * xScaling,
      109 * yScaling,
    );
    path.cubicTo(
      72.6 * xScaling,
      109 * yScaling,
      17.5 * xScaling,
      238.5 * yScaling,
      17.5 * xScaling,
      238.5 * yScaling,
    );
    path.cubicTo(
      11.3 * xScaling,
      253 * yScaling,
      11.2 * xScaling,
      269.3 * yScaling,
      17.1 * xScaling,
      283.9 * yScaling,
    );
    path.cubicTo(
      17.1 * xScaling,
      283.9 * yScaling,
      69.7 * xScaling,
      414.4 * yScaling,
      69.7 * xScaling,
      414.4 * yScaling,
    );
    path.cubicTo(
      75.60000000000001 * xScaling,
      429 * yScaling,
      87 * xScaling,
      440.59999999999997 * yScaling,
      101.5 * xScaling,
      446.79999999999995 * yScaling,
    );
    path.cubicTo(
      101.5 * xScaling,
      446.79999999999995 * yScaling,
      231.1 * xScaling,
      502 * yScaling,
      231.1 * xScaling,
      502 * yScaling,
    );
    path.cubicTo(
      239 * xScaling,
      505.4 * yScaling,
      247.6 * xScaling,
      506.9 * yScaling,
      256 * xScaling,
      506.7 * yScaling,
    );
    path.cubicTo(
      264.5 * xScaling,
      507 * yScaling,
      273 * xScaling,
      505.4 * yScaling,
      280.9 * xScaling,
      502 * yScaling,
    );
    path.cubicTo(
      280.9 * xScaling,
      502 * yScaling,
      410.4 * xScaling,
      446.9 * yScaling,
      410.4 * xScaling,
      446.9 * yScaling,
    );
    path.cubicTo(
      424.9 * xScaling,
      440.7 * yScaling,
      436.29999999999995 * xScaling,
      429.09999999999997 * yScaling,
      442.2 * xScaling,
      414.5 * yScaling,
    );
    path.cubicTo(
      442.2 * xScaling,
      414.5 * yScaling,
      494.9 * xScaling,
      284 * yScaling,
      494.9 * xScaling,
      284 * yScaling,
    );
    path.cubicTo(
      500.8 * xScaling,
      269.4 * yScaling,
      500.7 * xScaling,
      253 * yScaling,
      494.5 * xScaling,
      238.5 * yScaling,
    );
    path.cubicTo(
      494.5 * xScaling,
      238.5 * yScaling,
      494.5 * xScaling,
      238.5 * yScaling,
      494.5 * xScaling,
      238.5 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
