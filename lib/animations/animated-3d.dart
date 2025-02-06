import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class Animated3dWidget extends StatefulWidget {
  const Animated3dWidget({super.key});

  @override
  State<Animated3dWidget> createState() => _Animated3dWidgetState();
}

class _Animated3dWidgetState extends State<Animated3dWidget>
    with TickerProviderStateMixin {
  late final AnimationController _xController;
  late final AnimationController _yController;
  late final AnimationController _zController;
  late Tween<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    _xController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    _yController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    _zController =
        AnimationController(vsync: this, duration: const Duration(seconds: 40));

    _animation = Tween<double>(begin: 0, end: pi * 2);
    super.initState();
  }

  @override
  void dispose() {
    _xController.dispose();
    _yController.dispose();
    _zController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _xController
      ..reset()
      ..repeat();
    _yController
      ..reset()
      ..repeat();
    _zController
      ..reset()
      ..repeat();

    double widthAndHeight = 100;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("My title"),
            const SizedBox(
              height: 100,
              width: double.infinity,
            ),
            AnimatedBuilder(
              animation:
                  Listenable.merge([_xController, _yController, _zController]),
              builder: (context, child) => Transform(
                transform: Matrix4.identity()
                  ..rotateX(_animation.evaluate(_xController))
                  ..rotateY(_animation.evaluate(_yController))
                  ..rotateZ(_animation.evaluate(_zController)),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    // Back
                    Transform(
                      transform: Matrix4.identity()
                        ..translate(Vector3(0, 0, -widthAndHeight)),
                      child: Container(
                          width: widthAndHeight,
                          height: widthAndHeight,
                          color: Colors.purple),
                    ),
                    // Left
                    Transform(
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.identity()..rotateY(pi / 2),
                        child: Container(
                            width: widthAndHeight,
                            height: widthAndHeight,
                            color: Colors.red)),
                    // Right
                    Transform(
                        alignment: Alignment.centerRight,
                        transform: Matrix4.identity()..rotateY(-pi / 2),
                        child: Container(
                            width: widthAndHeight,
                            height: widthAndHeight,
                            color: Colors.blue)),
                    // Front
                    Container(
                        width: widthAndHeight,
                        height: widthAndHeight,
                        color: Colors.green),
                    // Top Side
                    Transform(
                        alignment: Alignment.topCenter,
                        transform: Matrix4.identity()..rotateX(-pi / 2),
                        child: Container(
                            width: widthAndHeight,
                            height: widthAndHeight,
                            color: Colors.orange)),
                    // Bottom Side
                    Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.identity()..rotateX(pi / 2),
                        child: Container(
                            width: widthAndHeight,
                            height: widthAndHeight,
                            color: Colors.brown)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
