import 'package:flutter/material.dart';

class AppImageWidget extends StatefulWidget {
  const AppImageWidget({super.key});

  @override
  State<AppImageWidget> createState() => _AppImageWidgetState();
}

class _AppImageWidgetState extends State<AppImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
        color: Colors.pink,
        colorBlendMode: BlendMode.colorBurn,
      ),
    );
  }
}
