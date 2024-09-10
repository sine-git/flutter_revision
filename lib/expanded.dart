import 'package:flutter/material.dart';

class AppExpanded extends StatefulWidget {
  const AppExpanded({super.key});

  @override
  State<AppExpanded> createState() => _AppExpandedState();
}

class _AppExpandedState extends State<AppExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.pink,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.purple,
        ),
      ),
    ]));
  }
}
