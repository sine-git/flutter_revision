import 'package:flutter/material.dart';

class AppRadioWidget extends StatefulWidget {
  const AppRadioWidget({super.key});

  @override
  State<AppRadioWidget> createState() => _AppRadioWidgetState();
}

final List<String> options = ["Option1", "Option2"];

class _AppRadioWidgetState extends State<AppRadioWidget> {
  String? currentValue = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: const Text("Option 1"),
                trailing: const Icon(Icons.favorite),
                leading: Radio(
                  value: options[0],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Option 2"),
                trailing: const Icon(Icons.favorite),
                leading: Radio(
                  value: options[1],
                  groupValue: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = value.toString();
                    });
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
