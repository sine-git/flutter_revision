import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedRotation extends StatefulWidget {
  const AppAnimatedRotation({super.key});

  @override
  State<AppAnimatedRotation> createState() => _AppAnimatedRotationState();
}

class _AppAnimatedRotationState extends State<AppAnimatedRotation> {
  double turns = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  turns += 1 / 4;
                });
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text("Rotate Logo"),
            )
          ],
        ),
      ),
    );
  }
}
