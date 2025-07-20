import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key});

  @override
  State<DraggablePage> createState() => _DraggablePage();
}

class _DraggablePage extends State<DraggablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
                feedback: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                )),
            DragTarget(
              onAcceptWithDetails: (data) => Container(),
              builder: (context, candidateData, rejectedData) => Container(
                color: Colors.purple,
                height: 100,
                width: 100,
                child: const Text("Drage here"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
