import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSemanticWidget extends StatefulWidget {
  const AppSemanticWidget({super.key});

  @override
  State<AppSemanticWidget> createState() => _AppSemanticWidgetState();
}

class _AppSemanticWidgetState extends State<AppSemanticWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My title"),
      ),
      body: Center(
        child: Column(
          children: [
            Semantics(
              label: "This is the flutter logo",
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            const FlutterLogo(
              size: 200,
            )
          ],
        ),
      ),
    );
  }
}
