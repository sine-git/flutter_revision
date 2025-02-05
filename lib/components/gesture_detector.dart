import 'package:flutter/material.dart';

class AppGestureDetector extends StatefulWidget {
  const AppGestureDetector({super.key});

  @override
  State<AppGestureDetector> createState() => _AppGestureDetectorState();
}

class _AppGestureDetectorState extends State<AppGestureDetector> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _counter++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text(
              "$_counter",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
