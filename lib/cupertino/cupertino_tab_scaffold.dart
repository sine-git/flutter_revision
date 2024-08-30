import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoTabScaffold extends StatefulWidget {
  const AppCupertinoTabScaffold({super.key});

  @override
  State<AppCupertinoTabScaffold> createState() =>
      _AppCupertinoTabScaffoldState();
}

class _AppCupertinoTabScaffoldState extends State<AppCupertinoTabScaffold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) => Container(
          child: FlutterLogo(),
        ),
      ),
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), label: "Person"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings), label: "Settings"),
      ]),
    );
  }
}
