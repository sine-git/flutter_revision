import 'package:flutter/material.dart';

class AppRawChipWidget extends StatefulWidget {
  const AppRawChipWidget({super.key});

  @override
  State<AppRawChipWidget> createState() => _AppRawChipWidgetState();
}

class _AppRawChipWidgetState extends State<AppRawChipWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RawChip(
          label: Text("RawChip"),
          avatar: Icon((Icons.favorite)),
          deleteIcon: Icon(Icons.remove_circle),
        ),
      ),
    );
  }
}
