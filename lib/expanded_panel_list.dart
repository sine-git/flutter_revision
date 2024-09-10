import 'package:flutter/material.dart';

class AppExpansionPanelList extends StatefulWidget {
  const AppExpansionPanelList({super.key});

  @override
  State<AppExpansionPanelList> createState() => _AppExpansionPanelListState();
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

class _AppExpansionPanelListState extends State<AppExpansionPanelList> {
  final List<Item> _data = List<Item>.generate(
      10, (index) => Item(headerText: "Item", expandedText: "Expanded Text"));
  final bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fullter map"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            //  expandedHeaderPadding: const EdgeInsets.all(10),
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _data[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: _data
                .map((e) => ExpansionPanel(
                    isExpanded: e.isExpanded,
                    headerBuilder: (context, isExpanded) => const ListTile(
                          title: Text("Item"),
                          leading: FlutterLogo(),
                        ),
                    body: const ListTile()))
                .toList(),
          ),
        ));
  }
}
