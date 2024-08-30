import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCuppertinoSlider extends StatefulWidget {
  const AppCuppertinoSlider({super.key});

  @override
  State<AppCuppertinoSlider> createState() => _AppCuppertinoSliderState();
}

class _AppCuppertinoSliderState extends State<AppCuppertinoSlider> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Current value is $_currentValue"),
        CupertinoSlider(
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          value: _currentValue,
          min: 0,
          max: 10,
        )
      ]),
    ));
  }
}
