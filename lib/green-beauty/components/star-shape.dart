// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_revision/green-beauty/shapes/star.dart';

class StarShape extends StatelessWidget {
  double width;
  double height;
  Color color;
  StarShape({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Star(),
      child: Container(
        width: width,
        height: height,
        color: color,
      ),
    );
  }
}
