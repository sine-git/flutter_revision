import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSimpleDialogWidget extends StatefulWidget {
  const AppSimpleDialogWidget({super.key});

  @override
  State<AppSimpleDialogWidget> createState() => _AppSimpleDialogWidgetState();
}

class _AppSimpleDialogWidgetState extends State<AppSimpleDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                  title: const Text("This is the title"),
                  alignment: Alignment.center,
                  children: [
                    const Text("More informations"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Close"))
                  ],
                ),
              );
            },
            child: const Text("Button")),
      ),
    );
  }
}
