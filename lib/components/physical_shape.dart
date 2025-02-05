import 'package:flutter/material.dart';

class AppPhysicalShapeWidget extends StatefulWidget {
  const AppPhysicalShapeWidget({super.key});

  @override
  State<AppPhysicalShapeWidget> createState() => _AppPhysicalShapeWidgetState();
}

class _AppPhysicalShapeWidgetState extends State<AppPhysicalShapeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalShape(
          color: Colors.pink,
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: const SizedBox(
            width: 250,
            height: 250,
          ),
        ),
      ),
    );
  }
}
