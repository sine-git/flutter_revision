import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> widgets = [
  const Text("Tab 1"),
  const Text("Tab 2"),
  const Text("Tab 3")
];

class AppTabPageSelector extends StatefulWidget {
  const AppTabPageSelector({
    super.key,
  });

  @override
  State<AppTabPageSelector> createState() => AppTabPageSelectorState();
}

class AppTabPageSelectorState extends State<AppTabPageSelector>
    with TickerProviderStateMixin {
  int _index = 0;
  late final TabController _tabController =
      TabController(length: widgets.length, initialIndex: _index, vsync: this);
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(children: [
          TabBarView(
            controller: _tabController,
            children: widgets,
          ),
          Positioned(
              bottom: 400,
              child: TabPageSelector(
                controller: _tabController,
                color: Colors.black38,
                selectedColor: Colors.blue,
              )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            (_index != widgets.length - 1) ? _index++ : _index = 0;
            _tabController.animateTo(_index);
          });
        },
      ),
    );
  }
}
