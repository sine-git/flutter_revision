import 'package:flutter/material.dart';

class AppPositionedWidget extends StatefulWidget {
  const AppPositionedWidget({super.key});

  @override
  State<AppPositionedWidget> createState() => _AppPositionedWidgetState();
}

class _AppPositionedWidgetState extends State<AppPositionedWidget> {
  List<String> imagesUrl = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              child: Image.network(
                imagesUrl[0],
                height: 400,
                width: 400,
              ),
            ),
            Positioned(
              left: 60,
              top: 120,
              child: Image.network(
                imagesUrl[1],
                height: 400,
                width: 400,
              ),
            ),
            Positioned(
              left: 100,
              top: 220,
              child: Image.network(
                imagesUrl[2],
                height: 400,
                width: 400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
