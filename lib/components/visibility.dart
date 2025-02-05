import 'package:flutter/material.dart';

class AppVisibilityWidget extends StatefulWidget {
  const AppVisibilityWidget({super.key});

  @override
  State<AppVisibilityWidget> createState() => _AppVisibilityWidgetState();
}

class _AppVisibilityWidgetState extends State<AppVisibilityWidget> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: const Text("Show/Hide")),
              Image.network(
                  "https://cdn.pixabay.com/photo/2024/02/21/13/15/lipstick-8587707_1280.jpg"),
              const SizedBox(
                height: 30,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2024/02/21/13/15/lipstick-8587707_1280.jpg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
