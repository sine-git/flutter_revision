import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_revision/clip_path.dart';

class AppClipRect extends StatefulWidget {
  const AppClipRect({super.key});

  @override
  State<AppClipRect> createState() => _AppClipRectState();
}

class _AppClipRectState extends State<AppClipRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          clipper: MyRectClipper(),
          child: Container(
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

class MyRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTWH(0, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
