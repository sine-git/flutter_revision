import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimtedContainerPage extends StatefulWidget {
  const AnimtedContainerPage({super.key});

  @override
  State<AnimtedContainerPage> createState() => AnimatedContainerState();
}

class AnimatedContainerState extends State<AnimtedContainerPage> {
  double boxWidth = 100;
  double boxHeight = 100;
  double boxRadius = 10;
  Color boxColor = Colors.blue;
  void changeBoxSize() {
    setState(() {
      final random = Random();
      boxWidth = random.nextInt(400).toDouble();
      boxHeight = random.nextInt(400).toDouble();
    });
  }

  void changeBoxColor() {
    setState(() {
      final random = Random();
      boxColor = Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    });
  }

  void changeBoxRadius() {
    setState(() {
      final random = Random();
      boxRadius = random.nextInt(80).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        width: boxWidth,
        height: boxHeight,
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.all(Radius.circular(boxRadius))),
      )),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: changeBoxSize, icon: const Icon(Icons.circle)),
          IconButton(
              onPressed: changeBoxRadius, icon: const Icon(Icons.rectangle)),
          IconButton(
              onPressed: changeBoxColor,
              icon: const Icon(Icons.color_lens_sharp)),
        ],
      ),
    );
  }
}
