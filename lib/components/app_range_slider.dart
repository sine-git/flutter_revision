import 'package:flutter/material.dart';

class AppRangeSliderWidget extends StatefulWidget {
  const AppRangeSliderWidget({super.key});

  @override
  State<AppRangeSliderWidget> createState() => _AppRangeSliderWidgetState();
}

class _AppRangeSliderWidgetState extends State<AppRangeSliderWidget> {
  RangeValues rangeValues = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels lables =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Mapp"),
      ),
      body: Center(
        child: RangeSlider(
          values: rangeValues,
          onChanged: (value) {
            setState(() {
              rangeValues = value;
            });
          },
        ),
      ),
    );
  }
}
