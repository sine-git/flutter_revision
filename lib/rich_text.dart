import 'package:flutter/material.dart';

class AppRichTextWidget extends StatefulWidget {
  const AppRichTextWidget({super.key});

  @override
  State<AppRichTextWidget> createState() => RichTextWidgetState();
}

class RichTextWidgetState extends State<AppRichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.orange),
                children: [
              TextSpan(text: "Hello "),
              TextSpan(
                  text: "my Friend,", style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " How are you ?", style: TextStyle(color: Colors.blue))
            ])),
      ),
    );
  }
}
