import 'package:flutter/material.dart';

class AppFlutterLogo extends StatefulWidget {
  const AppFlutterLogo({super.key});

  @override
  State<AppFlutterLogo> createState() => _AppFlutterLogoState();
}

class _AppFlutterLogoState extends State<AppFlutterLogo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 300,
          style: FlutterLogoStyle.stacked,
        ),
      ),
    );
  }
}
