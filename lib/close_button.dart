import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCloseButton extends StatefulWidget {
  const AppCloseButton({super.key});

  @override
  State<AppCloseButton> createState() => _AppCloseButtonState();
}

class _AppCloseButtonState extends State<AppCloseButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
              color: Colors.white,
              child: AnimatedSize(
                duration: Duration(milliseconds: 500),
                child: CloseButton(
                  onPressed: () {
                    debugPrint("Just do something here");
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  color: Colors.red,
                ),
              )),
        ),
      ),
    );
  }
}
