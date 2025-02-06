import 'package:flutter/material.dart';
import 'package:flutter_revision/animations/3d-cube.dart';
import 'package:flutter_revision/animations/animated-3d.dart';
import 'package:flutter_revision/animations/animated-colored-container.dart';
import 'package:flutter_revision/animations/animated-semi-circle.dart';
import 'package:flutter_revision/animations/animated-shape.dart';
import 'package:flutter_revision/animations/animation-builder.dart';
import 'package:flutter_revision/components/carousel_view.dart';
import 'package:flutter_revision/components/main.dart';
import 'package:flutter_revision/green-beauty/pages/onboarding/onboarding.dart';

import 'green-beauty/pages/home-page/build/home-page.dart';
import 'green-beauty/theme.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CubeWidget(),
      theme: beautyTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
