import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTransitionWidget extends StatefulWidget {
  const SlideTransitionWidget({super.key});

  @override
  State<SlideTransitionWidget> createState() => SlideTransitionWidgetState();
}

class SlideTransitionWidgetState extends State<SlideTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);

  late final Animation<Offset> _animation =
      Tween<Offset>(begin: Offset.zero, end: const Offset(0, 0.5)).animate(
          CurvedAnimation(
              parent: _animationController, curve: Curves.elasticIn));
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
        child: SlideTransition(
          position: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
