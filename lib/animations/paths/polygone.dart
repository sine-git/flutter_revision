import 'package:flutter/material.dart';

class Polygone extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(14.64, 14.64);
    path.lineTo(0, 50);
    path.lineTo(14.64, 85.36);
    path.lineTo(50, 100);
    path.lineTo(85.36, 85.36);
    path.lineTo(100, 50);
    path.lineTo(85.36, 14.64);
    path.moveTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
