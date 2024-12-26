import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterButtonWidget extends StatelessWidget {
  Color textColor;
  String text;
  FooterButtonWidget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: TextStyle(fontSize: 10, color: textColor),
      ),
    );
  }
}
