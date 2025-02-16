import 'package:flutter/material.dart';

class AnimatedMovingContainer extends StatefulWidget {
  const AnimatedMovingContainer({super.key});

  @override
  State<AnimatedMovingContainer> createState() =>
      _AnimatedMovingContainerState();
}

class _AnimatedMovingContainerState extends State<AnimatedMovingContainer>
    with TickerProviderStateMixin {
  late AnimationController _firstAnimationController;
  late AnimationController _secondAnimationController;
  late Animation _firstAnimtion;
  late Animation _secondAnimtion;
  late Alignment _alignment;

  @override
  void initState() {
    // TODO: implement initState
    _firstAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _secondAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _firstAnimtion =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(_firstAnimationController);
    _secondAnimtion =
        AlignmentTween(begin: Alignment.centerRight, end: Alignment.centerLeft)
            .animate(_secondAnimationController);
    _firstAnimationController.forward();
    _firstAnimationController.addListener(
      () {
        if (_firstAnimationController.status == AnimationStatus.completed) {
          _firstAnimationController.reverse();
          _alignment = _secondAnimtion.value;
        } else if (_firstAnimationController.status ==
            AnimationStatus.dismissed) {
          _firstAnimationController.forward();
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moving Container"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _firstAnimationController,
          builder: (context, child) => Container(
              alignment: _firstAnimtion.value,
              width: double.infinity,
              height: double.infinity,
              color: Colors.orange,
              //duration: const Duration(seconds: 2),
              child: Container(width: 100, height: 100, color: Colors.pink)),
        ),
      ),
    );
  }
}
