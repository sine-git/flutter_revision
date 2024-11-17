import 'package:flutter/material.dart';

class AppPopupMenuWidget extends StatefulWidget {
  const AppPopupMenuWidget({super.key});

  @override
  State<AppPopupMenuWidget> createState() => _AppPopupMenuWidgetState();
}

class _AppPopupMenuWidgetState extends State<AppPopupMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: "Item 1",
              child: Text("Item 1"),
            ),
            const PopupMenuItem(child: Text("Item 2")),
            const PopupMenuItem(child: Text("Item 3")),
            const PopupMenuItem(child: Text("Item 4")),
            const PopupMenuItem(child: Text("Item 5")),
          ],
        )
      ]),
    );
  }
}
