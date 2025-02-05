import 'package:flutter/material.dart';

class AppExpandedIcon extends StatefulWidget {
  const AppExpandedIcon({super.key});

  @override
  State<AppExpandedIcon> createState() => _AppExpandedIconState();
}

class Item {
  bool isExpanded;

  String expandedText;

  String headerText;

  Item(
      {required this.headerText,
      required this.expandedText,
      this.isExpanded = false});
}

class _AppExpandedIconState extends State<AppExpandedIcon> {
  final List<Item> _data = List<Item>.generate(
      10, (index) => Item(headerText: "Item", expandedText: "Expanded Text"));
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Title"),
                ExpandIcon(
                  onPressed: (value) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  color: Colors.white,
                  expandedColor: Colors.black,
                  isExpanded: _isExpanded,
                )
              ],
            ),
          ),
          if (_isExpanded)
            Container(
              height: 100,
              color: Colors.blue,
              child: const Text("Is expanded"),
            )
        ],
      ),
    );
  }
}
