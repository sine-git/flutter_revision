import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryJobButton extends StatelessWidget {
  Color textColor;
  Color? backgroundColor;
  String text;
  IconData iconData;
  CategoryJobButton(
      {super.key,
      this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 20,
            color: textColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 12, color: textColor, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
