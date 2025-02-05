import 'package:flutter/material.dart';

class AppListViewWidget extends StatefulWidget {
  const AppListViewWidget({super.key});

  @override
  State<AppListViewWidget> createState() => _AppListViewWidgetState();
}

class _AppListViewWidgetState extends State<AppListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => const ListTile(
                title: Text("My title"),
                leading: Icon(Icons.favorite),
              ),
          separatorBuilder: (context, index) => const Divider(thickness: 1),
          itemCount: 10),
    );
  }
}
