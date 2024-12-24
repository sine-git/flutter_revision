import 'package:flutter/material.dart';

class AppTextSpanWidget extends StatefulWidget {
  const AppTextSpanWidget({super.key});

  @override
  State<AppTextSpanWidget> createState() => RichTextWidgetState();
}

class RichTextWidgetState extends State<AppTextSpanWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text.rich(TextSpan(
              text: "Going ",
              style: TextStyle(color: Colors.lightBlue, fontSize: 18),
              children: [
            TextSpan(
                text: "to the moon",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ]))),
    );
  }
}
