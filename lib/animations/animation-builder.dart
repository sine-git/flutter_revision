import 'dart:math';

import 'package:flutter/material.dart';

class AppAnimationBuilder extends StatefulWidget {
  const AppAnimationBuilder({super.key});

  @override
  State<AppAnimationBuilder> createState() => _AppAnimationBuilderState();
}

class _AppAnimationBuilderState extends State<AppAnimationBuilder>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation _animation;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0, end: pi * 2).animate(_animationController);
    _animationController.repeat();
    super.initState();
    // TODO: implement initState
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.initState();
    // TODO: implement dispose
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Builder"),
      ),
      body: Center(
          child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateY(_animation.value),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            )),
      )),
    );
  }
}
