import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAlign extends StatelessWidget {
  const AppAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Align(
        alignment: Alignment.topLeft,
        child: FlutterLogo(),
      )),
    );
  }
}
