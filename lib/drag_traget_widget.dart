import 'package:flutter/material.dart';

class AppDrageTargetWidget extends StatefulWidget {
  const AppDrageTargetWidget({super.key});

  @override
  State<AppDrageTargetWidget> createState() => _AppDrageTargetWidgetState();
}

class _AppDrageTargetWidgetState extends State<AppDrageTargetWidget> {
  @override
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              Draggable(
                data: Colors.orange,
                onDraggableCanceled: (velocity, offset) => null,
                feedback: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ),
              DragTarget(
                onAccept: (Color color) {
                  caughtColor = color;
                },
                builder: (BuildContext context, List<Color?> candidateData,
                        List<dynamic> rejectedData) =>
                    Container(
                  height: 200,
                  width: 200,
                  color: candidateData.isEmpty
                      ? caughtColor
                      : Colors.grey.shade200,
                  child: const Text("Drage here"),
                ),
              )
            ],
          )),
    );
  }
}
