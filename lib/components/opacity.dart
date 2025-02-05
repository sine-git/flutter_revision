import 'package:flutter/material.dart';

class AppOpacityWidget extends StatefulWidget {
  const AppOpacityWidget({super.key});

  @override
  State<AppOpacityWidget> createState() => _AppOpacityWidgetState();
}

class _AppOpacityWidgetState extends State<AppOpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 1,
              child: Container(
                color: Colors.orange,
                width: 100,
                height: 100,
                child: const Text("Hello My friend"),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.orange,
                width: 100,
                height: 100,
                child: const Text("Hello My friend"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
