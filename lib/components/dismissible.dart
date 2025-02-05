import 'package:flutter/material.dart';

class AppDismissible extends StatefulWidget {
  const AppDismissible({super.key});

  @override
  State<AppDismissible> createState() => _AppDismissibleState();
}

class _AppDismissibleState extends State<AppDismissible> {
  List<int> items = List.generate(100, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: items.length,
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey("${items[index]}"),
          background: Container(color: Colors.red, child: Text("$index")),
          onDismissed: (direction) {
            setState(() {
              items.remove(items[index]);
            });
          },
          child: ListTile(title: Text("item : $index")),
        ),
      ),
    );
  }
}
