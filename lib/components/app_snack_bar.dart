import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSnackBar extends StatefulWidget {
  const AppSnackBar({super.key});

  @override
  State<AppSnackBar> createState() => AppSnackBarState();
}

class AppSnackBarState extends State<AppSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text("Flutter Mapp"),
                  action: SnackBarAction(
                    label: "Ok",
                    onPressed: () {},
                  ),
                ));
              },
              child: const Text("Show snackbar")),
        ));
  }
}
