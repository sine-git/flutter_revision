import 'package:flutter/material.dart';

class RotationTransitionWidget extends StatefulWidget {
  const RotationTransitionWidget({super.key});

  @override
  State<RotationTransitionWidget> createState() =>
      RotationTransitionWidgetState();
}

class RotationTransitionWidgetState extends State<RotationTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat();
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
              padding: EdgeInsets.all(10),
              child: FlutterLogo(
                size: 80,
              )),
        ),
      ),
    );
  }
}
