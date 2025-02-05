import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSpacer extends StatefulWidget {
  const AppSpacer({super.key});

  @override
  State<AppSpacer> createState() => AppSpacerState();
}

class AppSpacerState extends State<AppSpacer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: [
            Container(
              color: Colors.orange,
              height: 100,
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              color: Colors.orange,
              height: 100,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              color: Colors.orange,
              height: 100,
            ),
          ],
        )));
  }
}
