import 'dart:ui';

import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  double width = 10;
  double height = 10;
  Color color;
  PageIndicator(
      {Key? key,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color));
  }
}
