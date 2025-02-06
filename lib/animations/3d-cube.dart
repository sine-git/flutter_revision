import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class CubeWidget extends StatefulWidget {
  const CubeWidget({super.key});

  @override
  State<CubeWidget> createState() => CubeState();
}

class CubeState extends State<CubeWidget> with TickerProviderStateMixin {
  late AnimationController _xController;
  late AnimationController _yController;
  late AnimationController _zController;

  late Tween<double> _rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState

    _xController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    _yController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    _zController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    _rotationAnimation = Tween(begin: 0, end: pi * 2);

    _xController
      ..reset()
      ..repeat();
    _yController
      ..reset()
      ..repeat();
    _zController
      ..reset()
      ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _xController.dispose();
    _yController.dispose();
    _zController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge([
            _xController,
            _yController,
            _zController,
          ]),
          builder: (context, child) => Transform(
            alignment: Alignment.center,
            transform:
                Matrix4.rotationX(_rotationAnimation.evaluate(_xController))
                  ..rotateY(_rotationAnimation.evaluate(_yController))
                  ..rotateZ(_rotationAnimation.evaluate(_yController)),
            child: Stack(
              children: [
                //Back
                Transform(
                  transform: Matrix4.identity()..translate(Vector3(0, 0, -100)),
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.brown)),
                ),
                //Left
                Transform(
                  transform: Matrix4.identity()..rotateY(pi / 2),
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.green)),
                ),

                //Right
                Transform(
                  transform: Matrix4.identity()..rotateY(-pi / 2),
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.blue)),
                ),
                // Front
                Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.orange)),
                // Top Center
                Transform(
                  transform: Matrix4.identity()..rotateX(-pi / 2),
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.purple)),
                ),
                //Bottom Center
                Transform(
                  transform: Matrix4.identity()..rotateX(pi / 2),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.red)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
