import 'package:flutter/material.dart';

class ReorderableListPage extends StatefulWidget {
  const ReorderableListPage({super.key});

  @override
  State<ReorderableListPage> createState() => _ReorderableListPageState();
}

List<String> names = ["Ibrahim", "Sacko", "Van"];

class _ReorderableListPageState extends State<ReorderableListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blue,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ReorderableListView(
                shrinkWrap: true,
                children: names
                    .map(
                      (name) => ListTile(
                        key: ValueKey(name),
                        title: Text(name),
                        subtitle: Text(name),
                      ),
                    )
                    .toList(),
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    final element = names.removeAt(oldIndex);
                    names.insert(newIndex, element);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
