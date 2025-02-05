import 'package:flutter/material.dart';

class AppFilterChip extends StatefulWidget {
  const AppFilterChip({super.key});

  @override
  State<AppFilterChip> createState() => _AppFilterChipState();
}

class _AppFilterChipState extends State<AppFilterChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilterChip(
            backgroundColor: Colors.pink,
            selectedColor: Colors.green,
            checkmarkColor: Colors.white,
            selected: _isSelected,
            iconTheme: const IconThemeData(color: Colors.white),
            label: const Text(
              "Filter chip",
              style: TextStyle(color: Colors.white),
            ),
            onSelected: (value) {
              setState(() {
                _isSelected = !_isSelected;
              });
            }),
      ),
    );
  }
}
