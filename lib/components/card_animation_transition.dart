import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarAnimationTransition extends StatefulWidget {
  const CarAnimationTransition({super.key});

  @override
  State<CarAnimationTransition> createState() => CarAnimationTransitionState();
}

class CarAnimationTransitionState extends State<CarAnimationTransition>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
