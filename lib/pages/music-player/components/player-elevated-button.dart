import 'package:flutter/material.dart';

class PlayerElevatedButton extends StatelessWidget {
  PlayerElevatedButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.icon});
  Color backgroundColor;
  Color textColor;
  String text;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: textColor,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
