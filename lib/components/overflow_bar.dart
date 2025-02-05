import 'package:flutter/material.dart';

class AppOverflowBarWidget extends StatefulWidget {
  const AppOverflowBarWidget({super.key});

  @override
  State<AppOverflowBarWidget> createState() => _AppOverflowBarWidgetState();
}

class _AppOverflowBarWidgetState extends State<AppOverflowBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: OverflowBar(
          spacing: 0,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
          ],
        ),
      ),
    );
  }
}
