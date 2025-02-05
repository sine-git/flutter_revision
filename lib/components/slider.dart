import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidernWidget extends StatefulWidget {
  const SlidernWidget({super.key});

  @override
  State<SlidernWidget> createState() => SlideTransitionWidgetState();
}

class SlideTransitionWidgetState extends State<SlidernWidget>
    with TickerProviderStateMixin {
  double _currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          value: _currentValue,
          min: 10,
          max: 50,
          divisions: 5,
          label: _currentValue.round().toString(),
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
      ),
    );
  }
}
