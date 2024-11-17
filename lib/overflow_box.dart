import 'package:flutter/material.dart';

class AppOverflowBoxWidget extends StatefulWidget {
  const AppOverflowBoxWidget({super.key});

  @override
  State<AppOverflowBoxWidget> createState() => _AppOverflowBoxWidgetState();
}

class _AppOverflowBoxWidgetState extends State<AppOverflowBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          child: OverflowBox(
            maxHeight: 200,
            maxWidth: 200,
            child: Container(
              color: Colors.pink.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
