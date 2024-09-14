import 'package:flutter/material.dart';

class AppFractionallyTranslation extends StatefulWidget {
  const AppFractionallyTranslation({super.key});

  @override
  State<AppFractionallyTranslation> createState() =>
      _AppFractionallyTranslationState();
}

class _AppFractionallyTranslationState
    extends State<AppFractionallyTranslation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            height: 100,
            width: 100,
          ),
          FractionalTranslation(
            translation: const Offset(1, -1),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
