import 'package:flutter/material.dart';
import 'package:flutter_revision/animations/draggable/draggable-animal-quiz-page.dart';
import 'package:flutter_revision/animations/draggable/draggable-animal-quiz-page.dart';
import 'package:flutter_revision/animations/draggable/draggable-page.dart';
import 'package:flutter_revision/animations/navigation/go-router/routes.dart';
import 'package:flutter_revision/clippaths/curved-path.dart';
import 'package:flutter_revision/components/column.dart';
import 'package:flutter_revision/components/tab_page_selector.dart';
import 'package:flutter_revision/mask/centered-image-mask.dart';
import 'package:flutter_revision/mask/gradiant-image-shader-mask-repetition.dart';
import 'package:flutter_revision/mask/gradiant-image-shader-mask.dart';
import 'package:flutter_revision/mask/gradiant-text-shader-mask-repetition%20copy.dart';
import 'package:flutter_revision/mask/gradiant-text-shader-mask.dart';

import 'green-beauty/pages/home-page/build/home-page.dart';
import 'green-beauty/theme.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});
  //Build with go_router
  /* @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      //home: const HideOnScrollPage(),
      theme: beautyTheme,
      debugShowCheckedModeBanner: false,
    );
  } */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CurvedPathPage(),
      theme: beautyTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
