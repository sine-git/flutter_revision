import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppNewAnimatedList extends StatefulWidget {
  const AppNewAnimatedList({super.key});

  @override
  State<AppNewAnimatedList> createState() => _AppNewAnimatedListState();
}

class _AppNewAnimatedListState extends State<AppNewAnimatedList> {
  List<String> _items = [];
  GlobalKey<AnimatedListState> _globalkey = GlobalKey<AnimatedListState>();

  void _addItems() {
    _items.insert(0, "Item ${_items.length + 1}");
    _globalkey.currentState!
        .insertItem(0, duration: Duration(milliseconds: 500));
  }

  void _removeItem(int index) {
    _globalkey.currentState!.removeItem(
        index,
        (context, animation) => SizeTransition(
              sizeFactor: animation,
              child: Card(
                color: Colors.red,
                child: ListTile(title: Text("Deleted")),
              ),
            ),
        duration: Duration(milliseconds: 500));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: IconButton(
                  iconSize: 40,
                  onPressed: _addItems,
                  icon: Icon(
                    Icons.add,
                    size: 40,
                  )),
            ),
            Expanded(
              child: AnimatedList(
                key: _globalkey,
                initialItemCount: 0,
                itemBuilder: (context, index, animation) => Card(
                  color: Colors.pinkAccent,
                  child: SizeTransition(
                    sizeFactor: animation,
                    key: UniqueKey(),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
