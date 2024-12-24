import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSwitchWidget extends StatefulWidget {
  const AppSwitchWidget({super.key});

  @override
  State<AppSwitchWidget> createState() => AppSwitchWidgetState();
}

class AppSwitchWidgetState extends State<AppSwitchWidget> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Switch(
          value: isTrue,
          onChanged: (value) {
            setState(() {
              isTrue = value;
            });
          },
        )));
  }
}
