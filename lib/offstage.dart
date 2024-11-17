import 'package:flutter/material.dart';

class AppOffstageWidget extends StatefulWidget {
  const AppOffstageWidget({super.key});

  @override
  State<AppOffstageWidget> createState() => _AppOffstageWidgetState();
}

class _AppOffstageWidgetState extends State<AppOffstageWidget> {
  bool _isHided = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: _isHided,
              child: const Icon(Icons.flutter_dash),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isHided = !_isHided;
                });
              },
              child: const Text("Press here"),
            )
          ],
        ),
      ),
    );
  }
}
