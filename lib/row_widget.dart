import 'package:flutter/material.dart';

class AppRowWidget extends StatefulWidget {
  const AppRowWidget({super.key});

  @override
  State<AppRowWidget> createState() => _AppRowWidgetState();
}

class _AppRowWidgetState extends State<AppRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      children: [
        Expanded(
            flex: 2,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Button"))),
        Expanded(
            flex: 2,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Button"))),
        Expanded(
            flex: 5,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Button"))),
      ],
    )));
  }
}
