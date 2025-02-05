import 'package:flutter/material.dart';

class AppRadioListTileWidget extends StatefulWidget {
  const AppRadioListTileWidget({super.key});

  @override
  State<AppRadioListTileWidget> createState() => _AppRadioListTileWidget();
}

final List<String> options = ["Option1", "Option2"];

class _AppRadioListTileWidget extends State<AppRadioListTileWidget> {
  String? currentValue = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        RadioListTile(
          title: const Text("Option 1"),
          value: options[0],
          groupValue: currentValue,
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
        ),
        RadioListTile(
          title: const Text("Option 2"),
          value: options[1],
          groupValue: currentValue,
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
        )
      ],
    ));
  }
}
