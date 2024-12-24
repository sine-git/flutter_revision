import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextWidget extends StatefulWidget {
  const AppTextWidget({
    super.key,
  });

  @override
  State<AppTextWidget> createState() => AppTextWidgetState();
}

class AppTextWidgetState extends State<AppTextWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is text way way to long for this row, This is text way way to long for this row , This is text way way to long for this row",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
