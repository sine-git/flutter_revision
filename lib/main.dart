import 'package:flutter/material.dart';
import 'package:flutter_revision/animations/3d-cube.dart';
import 'package:flutter_revision/animations/3d-drawer.dart';
import 'package:flutter_revision/animations/advanced/animated-container.dart';
import 'package:flutter_revision/animations/advanced/animated-floating-action-button.dart';
import 'package:flutter_revision/animations/advanced/animated-flow.dart';
import 'package:flutter_revision/animations/advanced/animated-textkit.dart';
import 'package:flutter_revision/animations/animated-3d.dart';
import 'package:flutter_revision/animations/animated-colored-container.dart';
import 'package:flutter_revision/animations/animated-custom-painter.dart';
import 'package:flutter_revision/animations/animated-moving-container.dart';
import 'package:flutter_revision/animations/animated-semi-circle.dart';
import 'package:flutter_revision/animations/animated-shape.dart';
import 'package:flutter_revision/animations/animated-square-rotation.dart';
import 'package:flutter_revision/animations/animation-builder.dart';
import 'package:flutter_revision/animations/hero/animated-hero.dart';
import 'package:flutter_revision/animations/normal-custom-painter.dart';
import 'package:flutter_revision/animations/skeleton.dart';
import 'package:flutter_revision/animations/tween-animtation-builder.dart';
import 'package:flutter_revision/animations/implicit-animation.dart';
import 'package:flutter_revision/components/aspect_ratio.dart';
import 'package:flutter_revision/components/carousel_view.dart';
import 'package:flutter_revision/components/dragable_reorderable_list.dart';
import 'package:flutter_revision/components/draggable_grid.dart';
import 'package:flutter_revision/components/form_widget.dart';
import 'package:flutter_revision/components/main.dart';
import 'package:flutter_revision/components/reorderable_list.dart';
import 'package:flutter_revision/custom-paint/master-painter.dart';
import 'package:flutter_revision/green-beauty/pages/onboarding/onboarding.dart';
import 'package:flutter_revision/pages/contact-page/contact-page.dart';

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
      home: const AnimatedFlowPage(),
      theme: beautyTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
