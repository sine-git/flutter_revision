import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppChip extends StatefulWidget {
  const AppChip({super.key});

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text("This is a flutter chip widget"),
          backgroundColor: Colors.pink,
          avatar: Icon(Icons.favorite),
          onDeleted: () {
            print("My deleted button is selected");
          },
        ),
      ),
    );
  }
}
