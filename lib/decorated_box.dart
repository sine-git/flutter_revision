import 'package:flutter/material.dart';

class AppDecoratedBoxWigdet extends StatefulWidget {
  const AppDecoratedBoxWigdet({super.key});

  @override
  State<AppDecoratedBoxWigdet> createState() => _AppDecoratedBoxWigdetState();
}

class _AppDecoratedBoxWigdetState extends State<AppDecoratedBoxWigdet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                  focalRadius: BorderSide.strokeAlignCenter,
                  colors: [Colors.red, Colors.orange])),
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
