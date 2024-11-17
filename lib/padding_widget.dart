import 'package:flutter/material.dart';

class AppPaddingWidget extends StatefulWidget {
  const AppPaddingWidget({super.key});

  @override
  State<AppPaddingWidget> createState() => _AppPaddingWidgetState();
}

class _AppPaddingWidgetState extends State<AppPaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.fromLTRB(2, 10, 10, 20),
            child: Text("My padding"),
          ),
        ),
      ),
    );
  }
}
