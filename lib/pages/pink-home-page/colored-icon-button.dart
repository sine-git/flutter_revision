import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredIconButton extends StatelessWidget {
  bool showIcon;
  bool showText;
  Color backgroundColor;
  Color? iconColor;
  Color textColor;
  String? text;
  IconData? icon;

  ColoredIconButton(
      {super.key,
      required this.showIcon,
      required this.showText,
      required this.backgroundColor,
      required this.textColor,
      this.iconColor,
      this.text,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showIcon)
            Icon(
              icon,
              color: iconColor ?? textColor,
            ),
          if (showText)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                text ?? "",
                style: TextStyle(color: textColor, fontSize: 14),
              ),
            )
        ],
      ),
    );
  }
}
