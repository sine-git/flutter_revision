import 'package:flutter/material.dart';

class AppExpansionTile extends StatefulWidget {
  const AppExpansionTile({super.key});

  @override
  State<AppExpansionTile> createState() => _AppExpansionTileState();
}

class _AppExpansionTileState extends State<AppExpansionTile> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ExpansionTile(
          onExpansionChanged: (value) {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          trailing:
              _isExpanded ? const Icon(Icons.favorite) : const Icon(Icons.shop),
          title: const Text("Expansion"),
          children: const [
            ListTile(
              title: Text("This is my expansion title"),
            )
          ],
        ),
      ),
    );
  }
}
