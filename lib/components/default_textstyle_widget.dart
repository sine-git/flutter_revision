import 'package:flutter/material.dart';

class AppDefautlTextStyle extends StatefulWidget {
  const AppDefautlTextStyle({super.key});

  @override
  State<AppDefautlTextStyle> createState() => _AppDefautlTextStyleState();
}

class _AppDefautlTextStyleState extends State<AppDefautlTextStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Flutter map"),
          DefaultTextStyle(
              style: const TextStyle(fontSize: 36, color: Colors.blue),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Hello my friend"),
                    Text("How are you"),
                    Text("I'm fine my friend"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
