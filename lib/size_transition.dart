import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSizeTransitionWidget extends StatefulWidget {
  const AppSizeTransitionWidget({super.key});

  @override
  State<AppSizeTransitionWidget> createState() =>
      _AppSizeTransitionWidgetState();
}

class _AppSizeTransitionWidgetState extends State<AppSizeTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat();
  late final Animation _animation =
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
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
        child: SizeTransition(
            sizeFactor: _animationController,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: const Center(
                child: FlutterLogo(
              size: 200,
            ))),
      ),
    );
  }
}
