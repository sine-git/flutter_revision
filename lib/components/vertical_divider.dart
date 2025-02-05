import 'package:flutter/material.dart';

class AppVerticalDividerWidget extends StatefulWidget {
  const AppVerticalDividerWidget({super.key});

  @override
  State<AppVerticalDividerWidget> createState() =>
      AppVerticalDividerWidgetState();
}

class AppVerticalDividerWidgetState extends State<AppVerticalDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.pink),
            )),
            const VerticalDivider(
              color: Colors.black,
              thickness: 0.1,
              endIndent: 100,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.pink),
            )),
          ],
        ),
      ),
    );
  }
}
