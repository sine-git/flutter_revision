import 'package:flutter/cupertino.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

class HeartCusomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
/*     Path path = parseSvgPath(
      "M500.5,275.4c1,46-22.7,99.2-56.7,106.9  c-1.4,0.3-7.9,1.7-16.4,0.5c-29.2-4.2-44.8-34.5-47.7-40.4c-0.1,4.6-2.4,70-43.4,89.2c-3.4,1.6-12.8,5.9-25.1,5  c-35.4-2.4-54-44.2-55.2-47c-1.2,2.8-19.8,44.6-55.2,47c-12.3,0.8-21.7-3.4-25.1-5c-41-19.2-43.3-84.6-43.4-89.2  c-2.9,5.9-18.5,36.2-47.7,40.4c-8.5,1.2-15-0.2-16.4-0.5c-34-7.8-57.7-61-56.7-106.9c0.2-7,0.9-13.4,2-19.4c-1.1-6-1.8-12.4-2-19.4  c-1-46,22.7-99.2,56.7-106.9c1.4-0.3,7.9-1.7,16.4-0.5c29.2,4.2,44.8,34.5,47.7,40.4c0.1-4.6,2.4-70,43.4-89.2  c3.4-1.6,12.8-5.9,25.1-5c35.4,2.4,54,44.2,55.2,47c1.2-2.8,19.8-44.6,55.2-47c12.3-0.8,21.7,3.4,25.1,5  c41,19.2,43.3,84.6,43.4,89.2c2.9-5.9,18.5-36.2,47.7-40.4c8.5-1.2,15,0.2,16.4,0.5c34,7.8,57.7,61,56.7,106.9  c-0.2,7-0.9,13.4-2,19.4C499.6,262,500.3,268.4,500.5,275.4z",
    ); */
    Path path = Path();
    final double xScaling0 = size.width / 512;
    final double yScaling0 = size.height / 512;
    path.lineTo(256 * xScaling0, 43.1 * yScaling0);
    path.cubicTo(
      139.6 * xScaling0,
      -50.6 * yScaling0,
      -10.8 * xScaling0,
      49.2 * yScaling0,
      6.5 * xScaling0,
      199.2 * yScaling0,
    );
    path.cubicTo(
      28.1 * xScaling0,
      385.5 * yScaling0,
      162 * xScaling0,
      327.9 * yScaling0,
      256 * xScaling0,
      505.3 * yScaling0,
    );
    path.cubicTo(
      350 * xScaling0,
      327.8 * yScaling0,
      483.9 * xScaling0,
      385.5 * yScaling0,
      505.5 * xScaling0,
      199.2 * yScaling0,
    );
    path.cubicTo(
      522.8 * xScaling0,
      49.2 * yScaling0,
      372.4 * xScaling0,
      -50.6 * yScaling0,
      256 * xScaling0,
      43.1 * yScaling0,
    );
    path.cubicTo(
      256 * xScaling0,
      43.1 * yScaling0,
      256 * xScaling0,
      43.1 * yScaling0,
      256 * xScaling0,
      43.1 * yScaling0,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
