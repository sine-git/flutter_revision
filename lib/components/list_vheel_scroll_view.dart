import 'package:flutter/material.dart';

class AppListWeelScrollWiewWidget extends StatefulWidget {
  const AppListWeelScrollWiewWidget({super.key});

  @override
  State<AppListWeelScrollWiewWidget> createState() =>
      _AppListehllScrollWiewWidgetState();
}

class _AppListehllScrollWiewWidgetState
    extends State<AppListWeelScrollWiewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
            itemExtent: 100,
            children: List.generate(
              20,
              (index) => const ListTile(
                title: Text("My title"),
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.shop),
              ),
            )),
      ),
    );
  }
}
