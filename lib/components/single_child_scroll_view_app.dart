import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSingleChildScrollViewWidget extends StatefulWidget {
  const AppSingleChildScrollViewWidget({super.key});

  @override
  State<AppSingleChildScrollViewWidget> createState() =>
      _AppSingleChildScrollViewWidgetState();
}

class _AppSingleChildScrollViewWidgetState
    extends State<AppSingleChildScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            50,
            (index) => ListTile(
              title: Text("Item $index"),
            ),
          ),
        ),
      ),
    );
  }
}
