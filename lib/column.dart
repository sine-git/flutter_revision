import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppColumn extends StatefulWidget {
  const AppColumn({super.key});

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text"),
            Text("My text is here just see it"),
          ]),
    );
  }
}
