import 'package:flutter/material.dart';

class AppPlaceholderWidget extends StatefulWidget {
  const AppPlaceholderWidget({super.key});

  @override
  State<AppPlaceholderWidget> createState() => _AppPlaceholderWidgetState();
}

class _AppPlaceholderWidgetState extends State<AppPlaceholderWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Placeholder(
            fallbackHeight: 200,
            fallbackWidth: 200,
          ),
        ],
      ),
    );
  }
}
