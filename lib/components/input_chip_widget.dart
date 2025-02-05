import 'package:flutter/material.dart';

class AppInputChip extends StatefulWidget {
  const AppInputChip({super.key});

  @override
  State<AppInputChip> createState() => _AppInputChipState();
}

class _AppInputChipState extends State<AppInputChip> {
  bool _isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputChip(
          label: const Text("Einsteing"),
          avatar: CircleAvatar(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
          onSelected: (value) {
            setState(() {
              _isSelect = !_isSelect;
            });
          },
          selected: _isSelect,
        ),
      ),
    );
  }
}
