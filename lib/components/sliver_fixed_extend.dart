import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverFixedExtendListWidget extends StatefulWidget {
  const SliverFixedExtendListWidget({super.key});

  @override
  State<SliverFixedExtendListWidget> createState() =>
      SliverFixedExtendListWidgetState();
}

class SliverFixedExtendListWidgetState
    extends State<SliverFixedExtendListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  alignment: Alignment.center,
                  color: index.isEven ? Colors.black : Colors.green,
                  child: Text("Item $index"),
                ),
              ),
              itemExtent: 20)
        ],
      ),
    );
  }
}
