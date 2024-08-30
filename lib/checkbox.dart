import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({super.key});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
          value: isChecked,
        ),
      ),
    );
  }
}
