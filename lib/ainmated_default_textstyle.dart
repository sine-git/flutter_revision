import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedDefautlTextStyle extends StatefulWidget {
  const AppAnimatedDefautlTextStyle({super.key});

  @override
  State<AppAnimatedDefautlTextStyle> createState() =>
      _AppAnimatedDefautlTextStyleState();
}

class _AppAnimatedDefautlTextStyleState
    extends State<AppAnimatedDefautlTextStyle> {
  bool _first = true;
  double _fontSize = 16;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              child: Text("My text"),
              style: TextStyle(color: _color, fontSize: _fontSize),
            ),
            TextButton(
              child: Text("ChangeStyle"),
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
