import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedSquareRotation extends StatefulWidget {
  const AnimatedSquareRotation({super.key});

  @override
  State<AnimatedSquareRotation> createState() => _AnimatedSquareRotationState();
}

class _AnimatedSquareRotationState extends State<AnimatedSquareRotation>
    with TickerProviderStateMixin {
  final Alignment _alignment = Alignment.topLeft;
  late AnimationController _firstAnimationController;
  late AnimationController _secondAnimationController;
  late AnimationController _thirdAnimationController;
  late AnimationController _fourthAnimationController;

  late Animation _animation;
  @override
  void initState() {
    // TODO: implement initState

    _firstAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _secondAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _thirdAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _fourthAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _animation =
        AlignmentTween(begin: Alignment.topLeft, end: Alignment.topRight)
            .animate(_firstAnimationController);

    _firstAnimationController
      ..reset()
      ..forward();

    _firstAnimationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _animation = AlignmentTween(
                  begin: Alignment.topRight, end: Alignment.bottomRight)
              .animate(_secondAnimationController);
          _secondAnimationController
            ..reset()
            ..forward();
        }
      },
    );
    _secondAnimationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _animation = AlignmentTween(
                  begin: Alignment.bottomRight, end: Alignment.bottomLeft)
              .animate(_thirdAnimationController);
          _thirdAnimationController
            ..reset()
            ..forward();
        }
      },
    );
    _thirdAnimationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _animation = AlignmentTween(
                  begin: Alignment.bottomLeft, end: Alignment.topLeft)
              .animate(_fourthAnimationController);
          _fourthAnimationController
            ..reset()
            ..forward();
        }
      },
    );
    _fourthAnimationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _animation =
              AlignmentTween(begin: Alignment.topLeft, end: Alignment.topRight)
                  .animate(_firstAnimationController);

          _firstAnimationController
            ..reset()
            ..forward();
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*  Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        setState(() {
          switch (_alignment) {
            case Alignment.topLeft:
              _alignment = Alignment.topRight;
            case Alignment.topRight:
              _alignment = Alignment.bottomRight;
            case Alignment.bottomRight:
              _alignment = Alignment.bottomLeft;
            case Alignment.bottomLeft:
              _alignment = Alignment.topLeft;
          }
        });
      },
    ); */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moving Container"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge([
            _firstAnimationController,
            _secondAnimationController,
            _thirdAnimationController,
            _fourthAnimationController
          ]),
          builder: (context, child) => Container(
              alignment: _animation.value,
              width: double.infinity,
              height: double.infinity,
              //  color: Colors.orange,
              //duration: const Duration(seconds: 2),
              child: Container(width: 100, height: 100, color: Colors.pink)),
        ),
      ),
    );
  }
}
