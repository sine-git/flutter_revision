import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoPopupSurface extends StatefulWidget {
  const AppCupertinoPopupSurface({super.key});

  @override
  State<AppCupertinoPopupSurface> createState() =>
      _AppCupertinoPopupSurfaceState();
}

class _AppCupertinoPopupSurfaceState extends State<AppCupertinoPopupSurface> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              child: Text("Click me"),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoPopupSurface(
                    child: Container(
                      color: Colors.yellow,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 400,
                      child: Center(
                        child: CupertinoButton.filled(
                            child: Text("Close"),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    ));
  }
}
