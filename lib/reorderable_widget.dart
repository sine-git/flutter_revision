import 'package:flutter/material.dart';

class AppReordonableListViewWidget extends StatefulWidget {
  const AppReordonableListViewWidget({super.key});

  @override
  State<AppReordonableListViewWidget> createState() =>
      AppReordonableListViewWidgetState();
}

class AppReordonableListViewWidgetState
    extends State<AppReordonableListViewWidget> {
  List<int> items = List.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ReorderableListView(
        onReorder: (oldIndex, newIndex) {},
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  tileColor:
                      items[index].isOdd ? Colors.white12 : Colors.white30,
                  title: Text("Item : $index"),
                  trailing: const Icon(Icons.drag_handle_sharp),
                )),
      )),
    );
  }
}
