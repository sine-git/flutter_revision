import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

double defaultWidth = 100;

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  var _isZoomedIn = false;
  var _buttonTitle = "Zoom in";
  double _width = defaultWidth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
          onPressed: () {},
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: _width,
                  height: _width,
                  duration: const Duration(milliseconds: 370),
                  curve: Curves.bounceOut,
                  child: Image.asset("assets/images/profile-mae.jpeg"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isZoomedIn = !_isZoomedIn;
                      _buttonTitle = _isZoomedIn ? "Zoom out" : "Zoom in";
                      _width = _isZoomedIn
                          ? MediaQuery.of(context).size.width
                          : defaultWidth;
                    });
                  },
                  child: Text(_buttonTitle),
                ),
              ],
            ),
          )),
    );
  }
}
