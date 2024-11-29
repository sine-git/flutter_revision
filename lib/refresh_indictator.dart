import 'package:flutter/material.dart';

class AppRefreshIndicatorWidget extends StatefulWidget {
  const AppRefreshIndicatorWidget({super.key});

  @override
  State<AppRefreshIndicatorWidget> createState() =>
      _AppRefreshIndicatorWidgetState();
}

class _AppRefreshIndicatorWidgetState extends State<AppRefreshIndicatorWidget> {
  List<String> items = ["Item 1", "Item 2", "Item 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(items[index]),
            ),
          ),
          onRefresh: () async {
            await Future.delayed(const Duration(milliseconds: 3000));
            setState(() {
              items.add("Item 3");
            });
          },
        ),
      ),
    );
  }
}
