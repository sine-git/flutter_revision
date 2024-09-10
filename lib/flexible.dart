import 'package:flutter/material.dart';

class AppFlexible extends StatefulWidget {
  const AppFlexible({super.key});

  @override
  State<AppFlexible> createState() => _AppFlexibleState();
}

class _AppFlexibleState extends State<AppFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.blue,
                )),
            Flexible(
                flex: 5,
                child: Container(
                  height: 100,
                  color: const Color.fromARGB(255, 125, 131, 137),
                )),
            Flexible(
                flex: 5,
                child: Container(
                  height: 100,
                  color: const Color.fromARGB(255, 107, 243, 33),
                )),
            Flexible(
                flex: 5,
                child: Container(
                  height: 100,
                  color: const Color.fromARGB(255, 243, 33, 226),
                )),
          ],
        ),
      ),
    );
  }
}
