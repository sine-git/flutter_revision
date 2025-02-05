import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  const ScaleTransitionWidget({super.key});

  @override
  State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _animationController, curve: Curves.fastOutSlowIn);
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: const FlutterLogo(
          size: 50,
        ),
      ),
    );
  }
}
