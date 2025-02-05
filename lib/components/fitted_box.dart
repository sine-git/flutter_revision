import 'package:flutter/material.dart';

class AppFittedBox extends StatefulWidget {
  const AppFittedBox({super.key});

  @override
  State<AppFittedBox> createState() => _AppFittedBoxState();
}

class _AppFittedBoxState extends State<AppFittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: FittedBox(
              child: Container(
            width: 500,
            height: 500,
            color: Colors.pink,
          )),
        ),
      ),
    );
  }
}
