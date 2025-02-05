import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppConstrainedBox extends StatefulWidget {
  const AppConstrainedBox({super.key});

  @override
  State<AppConstrainedBox> createState() => _AppConstrainedBoxState();
}

class _AppConstrainedBoxState extends State<AppConstrainedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 200, maxHeight: 200),
          child: Container(
            color: Colors.orangeAccent,
            width: 500,
            height: 400,
          ),
        ),
      ),
    );
  }
}
