import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoContextMenu extends StatefulWidget {
  const AppCupertinoContextMenu({super.key});

  @override
  State<AppCupertinoContextMenu> createState() =>
      _AppCupertinoContextMenuState();
}

class _AppCupertinoContextMenuState extends State<AppCupertinoContextMenu> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.black,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            child: CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  child: Text("Action to"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
                  fit: BoxFit.fill,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
        ));
  }
}
