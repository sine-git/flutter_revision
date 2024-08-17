import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAbsordPointer extends StatelessWidget {
  const AppAbsordPointer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
                onPressed: () => "hello", child: Text("First one")),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              child: ElevatedButton(
                  onPressed: () => "hello", child: Text("Second one")),
            ),
          )
        ],
      ),
    ));
  }
}
