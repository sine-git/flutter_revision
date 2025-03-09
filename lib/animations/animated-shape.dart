import 'package:flutter/material.dart';
import 'package:flutter_revision/animations/advanced/paths/triangle.dart';
import 'package:flutter_revision/green-beauty/shapes/polygone.dart';

class AnimatedShape extends StatefulWidget {
  const AnimatedShape({super.key});

  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    //_animation = Tween<double>(begin: 50, end: 0).animate(_animationController);
    _animation = AlignmentTween(begin: Alignment.center, end: Alignment.topLeft)
        .animate(_animationController);
    _animationController
      ..reset()
      ..forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animation =
            AlignmentTween(begin: Alignment.center, end: Alignment.topRight)
                .animate(_animationController);
        _animationController
          ..reset()
          ..forward();
      }
    });
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Triangle"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) => AnimatedContainer(
            color: Colors.yellow,
            duration: const Duration(seconds: 2),
            alignment: _animation.value,
            child: Container(width: 100, height: 100, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
