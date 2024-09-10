import 'package:flutter/material.dart';

class AppDividerWidget extends StatefulWidget {
  const AppDividerWidget({super.key});

  @override
  State<AppDividerWidget> createState() => _AppDividerWidgetState();
}

class _AppDividerWidgetState extends State<AppDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          const SizedBox(
            width: 100,
            child: Divider(
              indent: 2,
              endIndent: 2,
              thickness: 2,
              color: Colors.pink,
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          )
        ],
      ),
    ));
  }
}
