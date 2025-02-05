import 'package:flutter/material.dart';

class AppWrapWidget extends StatefulWidget {
  const AppWrapWidget({super.key});

  @override
  State<AppWrapWidget> createState() => AppWrapyWidgetState();
}

class AppWrapyWidgetState extends State<AppWrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
            spacing: 10,
            runSpacing: 5,
            children: List.generate(
              20,
              (index) => Container(
                color: Colors.green,
                height: 20,
                width: 20,
              ),
            )),
      ),
    );
  }
}
