import 'package:flutter/material.dart';

class AppFractionallySizedBox extends StatefulWidget {
  const AppFractionallySizedBox({super.key});

  @override
  State<AppFractionallySizedBox> createState() =>
      _AppFractionallySizedBoxState();
}

class _AppFractionallySizedBoxState extends State<AppFractionallySizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink,
          height: 500,
          width: 500,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Container(
              color: Colors.amberAccent,
            ),
          ),
        ),
      ),
    );
  }
}
