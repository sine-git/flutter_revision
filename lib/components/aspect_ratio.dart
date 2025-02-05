import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAspectRatio extends StatefulWidget {
  const AppAspectRatio({super.key});

  @override
  State<AppAspectRatio> createState() => _AppAspectRatioState();
}

class _AppAspectRatioState extends State<AppAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: double.infinity,
          color: Colors.blueAccent,
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                //  width: 50,
                // height: 50,
                color: Colors.yellow,
              )),
        ),
      ),
    );
  }
}
