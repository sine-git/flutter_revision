import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppClipOval extends StatefulWidget {
  const AppClipOval({super.key});

  @override
  State<AppClipOval> createState() => _AppClipOvalState();
}

class _AppClipOvalState extends State<AppClipOval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
