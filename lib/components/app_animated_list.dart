import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedList extends StatefulWidget {
  const AppAnimatedList({super.key});

  @override
  State<AppAnimatedList> createState() => _AppAnimatedListState();
}

class _AppAnimatedListState extends State<AppAnimatedList> {
  List<String> _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: Duration(milliseconds: 500));
  }

  _removeItem(int index) {
    _key.currentState!.removeItem(
        index,
        (context, animation) => SizeTransition(
              sizeFactor: animation,
              child: const Card(
                margin: EdgeInsets.all(8),
                color: Colors.red,
                child: ListTile(
                  title: Text(
                    "Deleted",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
        duration: const Duration(milliseconds: 300));

    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: IconButton(
              iconSize: 50,
              // color: Colors.blue,
              onPressed: _addItem,
              // style: ButtonStyle(backgroundColor: ),
              icon: Icon(
                Icons.add,
                size: 30,
                //color: Colors.green,
              ),
            ),
          ),
        ),
        Expanded(
          child: AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index, animation) => SizeTransition(
              key: UniqueKey(),
              sizeFactor: animation,
              child: Card(
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 34, 87, 209),
                child: ListTile(
                  title: Text(
                    _items[index],
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        _removeItem(index);
                      },
                      icon: Icon(Icons.delete)),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
