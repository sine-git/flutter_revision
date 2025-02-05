import 'package:flutter/material.dart';

class AppIconButton extends StatefulWidget {
  const AppIconButton({super.key});

  @override
  State<AppIconButton> createState() => AppIconButtonState();
}

class AppIconButtonState extends State<AppIconButton> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$_counter"),
          IconButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              icon: const Icon(Icons.add)),
        ],
      )),
    );
  }
}
