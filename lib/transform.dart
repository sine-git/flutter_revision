import 'dart:math';

import 'package:flutter/material.dart';

class AppTransformWidget extends StatefulWidget {
  const AppTransformWidget({super.key});

  @override
  State<AppTransformWidget> createState() => AppTransformWidgetState();
}

class AppTransformWidgetState extends State<AppTransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          transform: Matrix4.rotationZ(pi * 1 / 4),
          child: Image.network(
              "https://cdn.pixabay.com/photo/2024/02/21/13/15/lipstick-8587707_1280.jpg"),
        ),
      ),
    );
  }
}
