import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBaseLine extends StatefulWidget {
  const AppBaseLine({super.key});

  @override
  State<AppBaseLine> createState() => _AppBaseLineState();
}

class _AppBaseLineState extends State<AppBaseLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orangeAccent,
          child: Baseline(
            baseline: 150,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
