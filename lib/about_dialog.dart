import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAboutDialog extends StatefulWidget {
  const AppAboutDialog({super.key});

  @override
  State<AppAboutDialog> createState() => _AppAboutDialogState();
}

class _AppAboutDialogState extends State<AppAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AboutDialog(
                      applicationIcon: FlutterLogo(),
                      applicationLegalese: "Copyright for me",
                      applicationName: "My App",
                      applicationVersion: "Version 1.0.4",
                      children: [Text("This is a test created by me")],
                    ));
          },
          child: Text("Show dialog")),
    ));
  }
}
