import 'package:flutter/material.dart';

class AppSnackBar extends StatefulWidget {
  const AppSnackBar({super.key});

  @override
  State<AppSnackBar> createState() => _AppSnackBarState();
}

class _AppSnackBarState extends State<AppSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LongPressDraggable(
              feedback: Container(color: Colors.blue, height: 50, width: 50),
              child: Container(color: Colors.blue, height: 50, width: 50)),
          const SelectableText("My text"),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text("This my snackbar"),
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(milliseconds: 500),
                      action: SnackBarAction(
                          label: "Close",
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ));
                  },
                  child: const SelectableText("Show snackbar"))),
        ],
      ),
    );
  }
}
