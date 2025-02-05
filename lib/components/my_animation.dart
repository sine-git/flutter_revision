import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  List<String> _items = [];
  _addItem() {
    _items.insert(0, "Item number ${_items.length}");
    _key.currentState!.insertItem(0, duration: Duration(milliseconds: 500));
  }

  _removeItem(int index) {
    _key.currentState!.removeItem(
        index,
        (context, animation) => SizeTransition(
              sizeFactor: animation,
              child: Builder(builder: (context) {
                return Card(
                  color: Colors.red,
                  child: ListTile(title: Text("Deleted")),
                );
              }),
            ));
    _items.removeAt(index);
  }

  bool selected = false;
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(color: Colors.blue),
              alignment: Alignment.center,
              child: IconButton(onPressed: _addItem, icon: Icon(Icons.add))),
          Expanded(
            child: AnimatedList(
              itemBuilder: (context, index, animation) => SizeTransition(
                sizeFactor: animation,
                key: UniqueKey(),
                child: Card(
                  color: Colors.pinkAccent,
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                        onPressed: () {
                          _removeItem(index);
                        },
                        icon: Icon(Icons.delete)),
                  ),
                ),
              ),
              key: _key,
            ),
          )
        ],
      )
          /*Container(
          height: 500,
          width: double.infinity,
          color: Colors.green,
          child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) => Transform.scale(
                    scale: _animationController.value * 1,
                    child: child,
                  ),
              child: Container(
                color: Colors.blue,
                height: 10,
                width: 10,
              )
              /* FlutterLogo(
              size: 50,
            ), */
              ),
        ),*/
          ),
    );
  }
}
