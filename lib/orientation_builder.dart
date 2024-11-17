import 'package:flutter/material.dart';

class AppOrientationBuilderWidget extends StatefulWidget {
  const AppOrientationBuilderWidget({super.key});

  @override
  State<AppOrientationBuilderWidget> createState() =>
      _AppOrientationBuilderWidgetState();
}

class _AppOrientationBuilderWidgetState
    extends State<AppOrientationBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Center(
          child: Text(
              orientation == Orientation.portrait ? 'Portrait' : 'Landscape'),
        ),
      ),
    );
  }
}
