import 'package:flutter/material.dart';

class AppIcon extends StatefulWidget {
  const AppIcon({super.key});

  @override
  State<AppIcon> createState() => _AppIconState();
}

class _AppIconState extends State<AppIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.favorite,
          shadows: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: const Offset(0, 10))
          ],
        ),
      ),
    );
  }
}
