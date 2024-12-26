import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedModalBarrier extends StatefulWidget {
  const AppAnimatedModalBarrier({super.key});

  @override
  State<AppAnimatedModalBarrier> createState() =>
      _AppAnimatedModalBarrierState();
}

class _AppAnimatedModalBarrierState extends State<AppAnimatedModalBarrier>
    with TickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    // TODO: implement initState
    ColorTween colorTween = ColorTween(
        begin: Colors.orangeAccent.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(0.5));

    _animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animationColor = colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _animationColor,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                width: 500,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isPressed = true;
                        });
                        _animationController.reset();
                        _animationController.forward();
                        Future.delayed(const Duration(milliseconds: 500), () {
                          setState(() {
                            _isPressed = false;
                          });
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent),
                      child: const Text("Press"),
                    ),
                    if (_isPressed) _animatedModalBarrier
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
