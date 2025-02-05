import 'package:flutter/material.dart';

class AppListenerWidget extends StatefulWidget {
  const AppListenerWidget({super.key});

  @override
  State<AppListenerWidget> createState() => _AppListenerWidgetState();
}

class _AppListenerWidgetState extends State<AppListenerWidget> {
  int numberPressed = 0;
  int numberReleased = 0;
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Listener(
          onPointerDown: (event) {
            setState(() {
              numberPressed++;
            });
          },
          onPointerMove: (event) {
            x = event.position.dx;
            y = event.position.dy;
          },
          onPointerUp: (event) {
            numberReleased++;
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("numberPressed : $numberPressed"),
                Text("numberReleased $numberReleased"),
                Text("x $x"),
                Text("y $y")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
