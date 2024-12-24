import 'package:flutter/material.dart';

class AppToggleButtonWidget extends StatefulWidget {
  const AppToggleButtonWidget({super.key});

  @override
  State<AppToggleButtonWidget> createState() => AppToggleButtonWidgetState();
}

class AppToggleButtonWidgetState extends State<AppToggleButtonWidget> {
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ToggleButtons(
        isSelected: isSelected,
        children: const [
          Icon(Icons.home),
          Icon(Icons.percent),
          Icon(Icons.favorite),
        ],
        onPressed: (index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      )),
    );
  }
}
