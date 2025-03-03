import 'package:flutter/material.dart';
import 'package:reorderable_grid/reorderable_grid.dart';

class DraggableGridPage extends StatefulWidget {
  const DraggableGridPage({super.key});

  @override
  State<DraggableGridPage> createState() => _DraggableGridPageState();
}

class _DraggableGridPageState extends State<DraggableGridPage> {
  List<Color> gridColors = [
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.purple,
    Colors.cyan,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        //color: Colors.purple,
        alignment: Alignment.center,
        child: ReorderableGridView.count(
            crossAxisCount: 3,
            onReorderStart: (index) {
              print("Index reordering");
            },
            onReorder: (oldIndex, newIndex) {
              setState(() {
                final element = gridColors.removeAt(oldIndex);
                gridColors.insert(newIndex, element);
              });
            },
            childAspectRatio: 1,
            shrinkWrap: true,
            //padding: const EdgeInsets.all(10),
            children: gridColors
                .map(
                  (color) => Container(
                    key: ValueKey(color),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: color),
                    margin: const EdgeInsets.all(10),
                  ),
                )
                .toList()),
      ),
    );
  }
}
