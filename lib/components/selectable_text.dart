import 'package:flutter/material.dart';

class AppSelectableTextWidget extends StatefulWidget {
  const AppSelectableTextWidget({super.key});

  @override
  State<AppSelectableTextWidget> createState() =>
      _AppSelectableTextWidgetState();
}

class _AppSelectableTextWidgetState extends State<AppSelectableTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          "This the text",
          style: const TextStyle(),
          onSelectionChanged: (selection, cause) {},
        ),
      ),
    );
  }
}
