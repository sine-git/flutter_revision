import 'package:flutter/material.dart';

class AppInteractiveWidget extends StatefulWidget {
  const AppInteractiveWidget({super.key});

  @override
  State<AppInteractiveWidget> createState() => _AppInteractiveWidgetState();
}

class _AppInteractiveWidgetState extends State<AppInteractiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          child: Center(
            child: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
            ),
          )),
    );
  }
}
