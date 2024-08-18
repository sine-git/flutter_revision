import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedSwitcher extends StatefulWidget {
  const AppAnimatedSwitcher({super.key});

  @override
  State<AppAnimatedSwitcher> createState() => AppAnimatedSwitcherState();
}

class AppAnimatedSwitcherState extends State<AppAnimatedSwitcher> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,
            ),
            duration: Duration(milliseconds: 500),
            child: Text(
              key: ValueKey(_counter),
              '${_counter}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter += 1;
                });
              },
              child: Text("Add"))
        ],
      )),
    );
  }
}
