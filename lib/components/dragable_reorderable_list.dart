import 'package:flutter/material.dart';

class DragableReorderableListPage extends StatefulWidget {
  const DragableReorderableListPage({super.key});

  @override
  State<DragableReorderableListPage> createState() =>
      _DragableReorderableListPageState();
}

List<String> names = ["Ibrahim", "Sacko", "Van"];

class _DragableReorderableListPageState
    extends State<DragableReorderableListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        //height: MediaQuery.of(context).size.height * 0.8,
        height: 100,
        child: ReorderableListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: names
              .map(
                (name) => Padding(
                  key: ValueKey(name),
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    child: Text(name),
                  ),
                ),
              )

              // 0 1 2
              // oldIndex = 0
              // newIndex = 2
              .toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final element = names.removeAt(oldIndex);
              names.insert(newIndex, element);
            });
          },
        ),
      ),
    );
  }
}
