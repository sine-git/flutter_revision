// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var buttonSize = 80.0;

class AnimatedFloatingActionButtonPage extends StatefulWidget {
  const AnimatedFloatingActionButtonPage({super.key});

  @override
  State<AnimatedFloatingActionButtonPage> createState() =>
      _AnimatedFloatingActionButtonPageState();
}

class _AnimatedFloatingActionButtonPageState
    extends State<AnimatedFloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CircularFabWidget(),
    );
  }
}

class CircularFabWidget extends StatefulWidget {
  const CircularFabWidget({super.key});

  @override
  State<CircularFabWidget> createState() => _CircularFabWidgetState();
}

class _CircularFabWidgetState extends State<CircularFabWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> spreadAnimation;
  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    spreadAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.addListener(
      () {
        setState(() {});
      },
    );
//    spreadAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    super.initState();
  }

  animateActionButton() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
    print("Controller value is ${controller.value}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(controller: spreadAnimation),
      children:
          [Icons.mail, Icons.call, Icons.notifications, Icons.sms, Icons.menu]
              .map<Widget>(
                buildFab,
              )
              .toList(),
    );
  }

  Widget buildFab(IconData iconData) => SizedBox(
        width: buttonSize,
        height: buttonSize,
        child: FloatingActionButton(
          child: Icon(iconData),
          onPressed: () {
            animateActionButton();
          },
        ),
      );
}

class FlowMenuDelegate extends FlowDelegate {
  Animation<double> controller;
  FlowMenuDelegate({
    required this.controller,
  });

  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
    int n = context.childCount;
    for (int i = 0; i < n; i++) {
      final isLastItem = i == context.childCount - 1;
      setValue(value) => isLastItem ? 0.0 : value;
      final theta = i * pi * 0.5 / (n - 2);
      final radius = 180 * controller.value;
      print("Radius is $radius");
      //const radius = 180;
      final x = setValue(radius * cos(theta));
      final y = setValue(radius * sin(theta));
      context.paintChild(i, transform: Matrix4.identity()..translate(x, y, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
