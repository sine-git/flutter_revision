import 'package:flutter/cupertino.dart';

class PinkCusomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    final double xScaling = size.width / 300;
    final double yScaling = size.height / 500;
    path = Path();
    path.lineTo(size.width * 0.96, size.height * 0.3);
    path.cubicTo(size.width * 0.91, size.height * 0.3, size.width * 0.86,
        size.height * 0.38, size.width * 0.84, size.height * 0.49);
    path.cubicTo(size.width * 0.82, size.height * 0.29, size.width * 0.77,
        size.height * 0.14, size.width * 0.7, size.height * 0.14);
    path.cubicTo(size.width * 0.65, size.height * 0.14, size.width * 0.61,
        size.height / 5, size.width * 0.58, size.height * 0.31);
    path.cubicTo(size.width * 0.56, size.height / 5, size.width * 0.52,
        size.height * 0.14, size.width * 0.47, size.height * 0.14);
    path.cubicTo(size.width * 0.4, size.height * 0.14, size.width * 0.34,
        size.height * 0.29, size.width / 3, size.height * 0.49);
    path.cubicTo(size.width * 0.31, size.height * 0.38, size.width * 0.26,
        size.height * 0.3, size.width / 5, size.height * 0.3);
    path.cubicTo(size.width * 0.14, size.height * 0.3, size.width * 0.08,
        size.height * 0.44, size.width * 0.08, size.height * 0.62);
    path.cubicTo(size.width * 0.08, size.height * 0.79, size.width * 0.14,
        size.height * 0.93, size.width / 5, size.height * 0.93);
    path.cubicTo(size.width * 0.26, size.height * 0.93, size.width * 0.3,
        size.height * 0.86, size.width * 0.32, size.height * 0.76);
    path.cubicTo(size.width * 0.34, size.height * 0.98, size.width * 0.4,
        size.height * 1.14, size.width * 0.47, size.height * 1.14);
    path.cubicTo(size.width * 0.52, size.height * 1.14, size.width * 0.56,
        size.height * 1.07, size.width * 0.58, size.height * 0.96);
    path.cubicTo(size.width * 0.61, size.height * 1.07, size.width * 0.65,
        size.height * 1.14, size.width * 0.7, size.height * 1.14);
    path.cubicTo(size.width * 0.77, size.height * 1.14, size.width * 0.83,
        size.height * 0.98, size.width * 0.85, size.height * 0.76);
    path.cubicTo(size.width * 0.87, size.height * 0.86, size.width * 0.91,
        size.height * 0.93, size.width * 0.96, size.height * 0.93);
    path.cubicTo(size.width * 1.03, size.height * 0.93, size.width * 1.08,
        size.height * 0.79, size.width * 1.08, size.height * 0.62);
    path.cubicTo(size.width * 1.08, size.height * 0.44, size.width * 1.03,
        size.height * 0.3, size.width * 0.96, size.height * 0.3);
    path.cubicTo(size.width * 0.96, size.height * 0.3, size.width * 0.96,
        size.height * 0.3, size.width * 0.96, size.height * 0.3);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
