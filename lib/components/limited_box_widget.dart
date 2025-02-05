import 'package:flutter/material.dart';

class AppLimitedBoxWidget extends StatefulWidget {
  const AppLimitedBoxWidget({super.key});

  @override
  State<AppLimitedBoxWidget> createState() => _AppLimitedBoxWidgetState();
}

class _AppLimitedBoxWidgetState extends State<AppLimitedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: LimitedBox(
            maxHeight: 20,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
