import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppShowAlertDialog extends StatelessWidget {
  const AppShowAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Flutter Map"),
                        actions: [Text("Close")],
                        contentPadding: EdgeInsets.all(20),
                        content: Text("This is the alert dialog"),
                      ));
            },
            child: Text("Show alert dialog")),
      ),
    );
  }
}
