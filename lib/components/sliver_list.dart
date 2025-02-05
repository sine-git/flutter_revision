import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSliverList extends StatefulWidget {
  const AppSliverList({super.key});

  @override
  State<AppSliverList> createState() => AppSliverListState();
}

class AppSliverListState extends State<AppSliverList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) => ListTile(
              title: Text("Item $index"),
              tileColor: Colors.orange[100 * (index % 9)],
            ),
          )
        ],
      ),
    );
  }
}
