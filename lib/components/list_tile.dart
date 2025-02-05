import 'package:flutter/material.dart';

class AppListTileWidget extends StatefulWidget {
  const AppListTileWidget({super.key});

  @override
  State<AppListTileWidget> createState() => _AppListTileWidgetState();
}

class _AppListTileWidgetState extends State<AppListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ListTile(
          title: Text("My title"),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.menu),
          tileColor: Colors.blue,
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
