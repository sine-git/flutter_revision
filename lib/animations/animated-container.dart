import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimationAnimatedContainer extends StatefulWidget {
  const AnimationAnimatedContainer({super.key});

  @override
  State<AnimationAnimatedContainer> createState() =>
      _AnimationAnimatedContainerState();
}

class _AnimationAnimatedContainerState extends State<AnimationAnimatedContainer>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5));
  late Animation<double> _widthAnimation;
  late Animation<double> _heightAnimation;
  late Animation<Color> _colorAnimation;

  double height = 50;
  double width = 50;

  @override
  void initState() {
    // TODO: implement
    super.initState();
    _widthAnimation = Tween<double>(begin: 50, end: 500).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _heightAnimation = Tween<double>(begin: 50, end: 500).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => Container(
          color: Colors.pink,
          height: _widthAnimation.value,
          width: _heightAnimation.value,
        ),
      )
          /*    AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => Container(
          color: Colors.pink,
          height: _widthAnimation.value,
          width: _heightAnimation.value,
        ),
      ) */
          ),
    );
  }
}
