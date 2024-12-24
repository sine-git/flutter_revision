import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSwitchListTile extends StatefulWidget {
  const AppSwitchListTile({super.key});

  @override
  State<AppSwitchListTile> createState() => AppSwitchListTileState();
}

class AppSwitchListTileState extends State<AppSwitchListTile> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: SwitchListTile(
          title: const Text("Light mode"),
          secondary: const Icon(Icons.light),
          value: isTrue,
          onChanged: (value) {
            setState(() {
              isTrue = value;
            });
          },
        )));
  }
}
