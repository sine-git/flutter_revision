import 'package:flutter/material.dart';

class AppTooTipWidget extends StatefulWidget {
  const AppTooTipWidget({super.key});

  @override
  State<AppTooTipWidget> createState() => _AppTooTipWidgetState();
}

class _AppTooTipWidgetState extends State<AppTooTipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Tooltip(
          message: "This is an image",
          child: Image.network(
              "https://cdn.pixabay.com/photo/2024/02/21/13/15/lipstick-8587707_1280.jpg"),
        ),
      ),
    );
  }
}
