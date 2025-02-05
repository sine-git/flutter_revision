import 'package:flutter/material.dart';

class AppDrawerHeader extends StatefulWidget {
  const AppDrawerHeader({super.key});

  @override
  State<AppDrawerHeader> createState() => _AppDrawerHeaderState();
}

class _AppDrawerHeaderState extends State<AppDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: const [
          DrawerHeader(
            child: CircleAvatar(radius: 10, backgroundColor: Colors.blue),
          ),
          ListTile(
            title: Text("Hello my friend"),
          ),
          ListTile(
            title: Text("Hello my friend"),
          )
        ],
      )),
      appBar: AppBar(
        title: const Text("My app"),
      ),
    );
  }
}
