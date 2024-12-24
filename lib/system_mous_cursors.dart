import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSystemMouseCursor extends StatefulWidget {
  const AppSystemMouseCursor({super.key});

  @override
  State<AppSystemMouseCursor> createState() => AppSystemMouseCursorState();
}

class AppSystemMouseCursorState extends State<AppSystemMouseCursor> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: MouseRegion(
          cursor: SystemMouseCursors.grab,
          child: Container(
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.orange),
          ),
        )));
  }
}
