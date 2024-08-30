import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoScrollBar extends StatefulWidget {
  const AppCupertinoScrollBar({super.key});

  @override
  State<AppCupertinoScrollBar> createState() => AppCupertinoScrollBarState();
}

class AppCupertinoScrollBarState extends State<AppCupertinoScrollBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.black,
        child: CupertinoScrollbar(
          thicknessWhileDragging: 10,
          thickness: 7,
          radius: Radius.circular(10),
          child: ListView.builder(
            itemBuilder: (context, index) => Center(
                child: Text(
              "Current index $index",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ));
  }
}
