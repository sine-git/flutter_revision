import 'package:flutter/material.dart';

class AppOutlinedButtonWidget extends StatefulWidget {
  const AppOutlinedButtonWidget({super.key});

  @override
  State<AppOutlinedButtonWidget> createState() =>
      _AppOutlinedButtonWidgetState();
}

class _AppOutlinedButtonWidgetState extends State<AppOutlinedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                //backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: const Text("Click me")),
      ),
    );
  }
}
