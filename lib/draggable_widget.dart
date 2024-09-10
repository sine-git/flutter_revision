import 'package:flutter/material.dart';

class AppDragable extends StatefulWidget {
  const AppDragable({super.key});

  @override
  State<AppDragable> createState() => _AppDragableState();
}

class _AppDragableState extends State<AppDragable> {
  Color caughtColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable(
              feedback: Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                color: Colors.orangeAccent.withOpacity(0.4),
              ),
              data: Colors.blue,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                color: Colors.orangeAccent,
              ),
              onDraggableCanceled: (velocity, offset) {},
            ),
            DragTarget(
              onAccept: (Color data) {
                caughtColor = data;
              },
              builder: (context, candidateData, rejectedData) => Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                color: candidateData.isEmpty ? caughtColor : Colors.pink,
                child: const Text("Drag here"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
