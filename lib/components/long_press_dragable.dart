import 'package:flutter/material.dart';

class AppLongPressDragableWidget extends StatefulWidget {
  const AppLongPressDragableWidget({super.key});

  @override
  State<AppLongPressDragableWidget> createState() =>
      AppLongPressDragableWidgetState();
}

class AppLongPressDragableWidgetState
    extends State<AppLongPressDragableWidget> {
  Offset _offset = const Offset(200, 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                    left: _offset.dx,
                    top: _offset.dy,
                    child: LongPressDraggable(
                      feedback: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                      ),
                      child: Container(
                        color: Colors.pink,
                        height: 50,
                        width: 50,
                      ),
                      onDragEnd: (details) {
                        setState(() {
                          double adjustment =
                              MediaQuery.of(context).size.height -
                                  constraints.maxHeight;
                          _offset = Offset(details.offset.dx,
                              details.offset.dy - adjustment);
                        });
                      },
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
