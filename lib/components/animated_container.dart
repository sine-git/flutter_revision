import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedContainer extends StatefulWidget {
  const AppAnimatedContainer({super.key});

  @override
  State<AppAnimatedContainer> createState() => _AppAnimatedContainerState();
}

class _AppAnimatedContainerState extends State<AppAnimatedContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            color: selected ? Colors.white : Colors.green,
            height: 200,
            width: 200,
            duration: Duration(seconds: 2),
            curve: Curves.bounceOut,
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
