import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedAlign extends StatefulWidget {
  const AppAnimatedAlign({super.key});

  @override
  State<AppAnimatedAlign> createState() => _AppAnimatedAlignState();
}

class _AppAnimatedAlignState extends State<AppAnimatedAlign> {
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
          child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                duration: Duration(seconds: 3),
                curve: Curves.easeIn,
                alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
                child: FlutterLogo(),
              )),
        ),
      ),
    );
  }
}
