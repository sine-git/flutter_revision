import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppChoiceChip extends StatefulWidget {
  const AppChoiceChip({super.key});

  @override
  State<AppChoiceChip> createState() => _AppChoiceChipState();
}

class _AppChoiceChipState extends State<AppChoiceChip> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
          label: Text("My choice chip"),
          selectedColor: Colors.pink,
          selected: isSelected,
          onSelected: (value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
      ),
    );
  }
}
