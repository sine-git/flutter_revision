import 'package:flutter/material.dart';

class AppFadeInImage extends StatefulWidget {
  const AppFadeInImage({super.key});

  @override
  State<AppFadeInImage> createState() => _AppFadeInImageState();
}

class _AppFadeInImageState extends State<AppFadeInImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInImage.assetNetwork(
            placeholder: "",
            image:
                "'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg'"),
      ),
    );
  }
}
