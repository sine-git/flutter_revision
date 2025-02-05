import 'package:flutter/material.dart';

class AppFadeTransition extends StatefulWidget {
  const AppFadeTransition({super.key});

  @override
  State<AppFadeTransition> createState() => _AppFadeTransitionState();
}

class _AppFadeTransitionState extends State<AppFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      duration: const Duration(milliseconds: 3000), vsync: this)
    ..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut);

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
        child: FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
