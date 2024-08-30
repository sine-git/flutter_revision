import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoSwitch extends StatefulWidget {
  const AppCupertinoSwitch({super.key});

  @override
  State<AppCupertinoSwitch> createState() => App_CupertinoSwitchState();
}

class App_CupertinoSwitchState extends State<AppCupertinoSwitch> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      /*  child: Switch.adaptive(
          value: _light,
          onChanged: (value) {
            setState(() {
              _light = value;
            });
          }), */
      child: CupertinoSwitch(
          value: _light,
          onChanged: (value) {
            setState(() {
              _light = value;
            });
          }),
    ));
  }
}
