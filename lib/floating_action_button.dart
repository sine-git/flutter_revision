import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatefulWidget {
  const AppFloatingActionButton({super.key});

  @override
  State<AppFloatingActionButton> createState() =>
      _AppFloatingActionButtonState();
}

class _AppFloatingActionButtonState extends State<AppFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Icon(Icons.add)),
    );
  }
}
