import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableElementsPage extends StatefulWidget {
  const DraggableElementsPage({super.key});

  @override
  State<DraggableElementsPage> createState() => _DraggableElementsPageState();
}

class _DraggableElementsPageState extends State<DraggableElementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Draggable(
          feedback: Material(child: buildText("Dragged", Colors.green)),
          childWhenDragging:
              Material(child: buildText("Moving", Colors.orange)),
          //const SizedBox.shrink(),
          child: buildText("Drag me", Colors.purple),
        ),
      ),
    );
  }

  Widget buildText(String text, Color color) => Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        color: color,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      );
}
