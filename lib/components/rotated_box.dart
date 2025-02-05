import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatefulWidget {
  const RotatedBoxWidget({super.key});

  @override
  State<RotatedBoxWidget> createState() => RotatedBoxyWidgetState();
}

class RotatedBoxyWidgetState extends State<RotatedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("${num.parse("abcee")}"),
            const RotatedBox(
              quarterTurns: 1,
              child: FlutterLogo(
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
