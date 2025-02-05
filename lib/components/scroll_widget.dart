import 'package:flutter/material.dart';

class AppScrollBarWidget extends StatefulWidget {
  const AppScrollBarWidget({super.key});

  @override
  State<AppScrollBarWidget> createState() => _AppScrollBarWidgetState();
}

class _AppScrollBarWidgetState extends State<AppScrollBarWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item $index"),
            );
          },
        ),
      ),
    );
  }
}
