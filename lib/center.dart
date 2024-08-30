import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCenter extends StatefulWidget {
  const AppCenter({super.key});

  @override
  State<AppCenter> createState() => _AppCenterState();
}

class _AppCenterState extends State<AppCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.orange,
            child: Center(
              heightFactor: 5,
              child: Text("Flutter Map"),
            ),
          ),
        ],
      ),
    );
  }
}
