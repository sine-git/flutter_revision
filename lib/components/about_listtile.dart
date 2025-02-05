import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAboutListTile extends StatelessWidget {
  const AppAboutListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.abc_sharp),
          applicationIcon: FlutterLogo(),
          applicationLegalese: "My legaless",
          applicationName: "My Application",
          aboutBoxChildren: [Text("My App Information")],
        ),
      ),
    );
  }
}
