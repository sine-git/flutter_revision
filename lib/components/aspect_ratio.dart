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
          //padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          height: 500,
          width: 200,
          color: Colors.blueAccent,
          child: AspectRatio(
              aspectRatio: 1 / 2,
              child: Container(
                // width = 1/4 height
                // height = 2/1 width  inverse de l'aspect ratio
                //  width: 50,
                // height: 50,
                color: Colors.yellow,
              )),
        ),
      ),
    );
  }
}
