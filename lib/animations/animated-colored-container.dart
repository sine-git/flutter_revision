import 'package:flutter/material.dart';

class AnimatedColoredContainer extends StatefulWidget {
  const AnimatedColoredContainer({super.key});

  @override
  State<AnimatedColoredContainer> createState() =>
      _AnimatedColoredContainerState();
}

class _AnimatedColoredContainerState extends State<AnimatedColoredContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 12));
    _animation = ColorTween(begin: Colors.pink, end: Colors.amber)
        .animate(_animationController);

    _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Circle"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) => Container(
            width: 200,
            height: 200,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: _animation.value),
          ),
        ),
      ),
    );
  }
}
