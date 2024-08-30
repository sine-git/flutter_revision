import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppColoredBox extends StatefulWidget {
  const AppColoredBox({super.key});

  @override
  State<AppColoredBox> createState() => _AppColoredBoxState();
}

class _AppColoredBoxState extends State<AppColoredBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColoredBox(
          color: Colors.green,
          child: SizedBox(
            height: 400,
            width: 400,
          ),
        ),
      ),
    );
  }
}
