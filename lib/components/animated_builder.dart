import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class AppAnimatedBuilder extends StatefulWidget {
  const AppAnimatedBuilder({super.key});

  @override
  State<AppAnimatedBuilder> createState() => _AppAnimatedBuilderState();
}

class _AppAnimatedBuilderState extends State<AppAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(duration: Duration(seconds: 10), vsync: this)
        ..repeat();
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) => Transform.translate(
            offset: Offset(0, _animationController.value + 100),
            // angle: _animationController.value * 2 * math.pi,
            child: child,
          ),
          child: Container(
            width: 150,
            height: 150,
            child: Text("Hello my friend"),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
