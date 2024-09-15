import 'package:flutter/material.dart';

class AppInkWell extends StatefulWidget {
  const AppInkWell({super.key});

  @override
  State<AppInkWell> createState() => _AppInkWellState();
}

class _AppInkWellState extends State<AppInkWell> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _color = Colors.green;
            });
          },
          child: Container(
            color: _color,
            child: const Text("My widget"),
          ),
        ),
      ),
    );
  }
}
