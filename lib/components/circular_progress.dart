import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCircularProgress extends StatefulWidget {
  const AppCircularProgress({super.key});

  @override
  State<AppCircularProgress> createState() => _AppCircularProgressState();
}

class _AppCircularProgressState extends State<AppCircularProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.pink,
          backgroundColor: Colors.pink,
          // value: 0.7,
        ),
      ),
    );
  }
}
