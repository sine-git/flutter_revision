import 'package:flutter/material.dart';

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

  function() {
    /* var Line = 1;
    var Line2 = 1;
    var Line3 = 1;
    var Line4 = 1;
    var Line5 = 1;
    var Line6 = 1;
    var Line7 = 1; */

    /* Terminal */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(color: _color, fontSize: _fontSize),
              child: const Text("My text"),
            ),
            TextButton(
              child: const Text("ChangeStyle"),
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
            ),
            TextButton(
              child: const Text("ChangeStyle"),
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
