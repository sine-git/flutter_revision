import 'package:flutter/material.dart';

class AppPageWiewWidget extends StatefulWidget {
  const AppPageWiewWidget({super.key});

  @override
  State<AppPageWiewWidget> createState() => _AppPageWiewWidgetState();
}

class _AppPageWiewWidgetState extends State<AppPageWiewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.indigo,
        ),
      ]),
    );
  }
}
