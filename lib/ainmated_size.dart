import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class AppAnimatedSize extends StatefulWidget {
  const AppAnimatedSize({super.key});

  @override
  State<AppAnimatedSize> createState() => _AppAnimatedSizeState();
}

class _AppAnimatedSizeState extends State<AppAnimatedSize>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  double _size = 100;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    //..repeat();
    super.initState();
  }

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  //   _size = _size == 100 ? 50 : 100;
                  _animationController.forward();
                });
              },
              child: Text("Scale here")),
          AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) => Transform.scale(
                    scale: _animationController.value * 1.1,
                    child: child,
                  ),
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: Text("Hello my friend"),
              )),
        ],
      )),
    );
  }
}
