import 'package:flutter/material.dart';

class Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    Path path = Path();
    //Offset offset = Offset.zero;
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    path.close();
    //path.lineTo(size., size.)
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)
      // TODO: implement shouldReclip
      =>
      true;
}
