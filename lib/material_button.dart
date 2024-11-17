import 'package:flutter/material.dart';

class AppMaterialButton extends StatefulWidget {
  const AppMaterialButton({super.key});

  @override
  State<AppMaterialButton> createState() => _AppMaterialButtonState();
}

class _AppMaterialButtonState extends State<AppMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          onLongPress: () {},
          splashColor: Colors.pink,
          color: Colors.blue,
          child: const Text("Click here"),
        ),
      ),
    );
  }
}
