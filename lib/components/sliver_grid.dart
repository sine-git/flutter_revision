import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSliverGridWidget extends StatefulWidget {
  const AppSliverGridWidget({super.key});

  @override
  State<AppSliverGridWidget> createState() => _AppSliverGridWidgetState();
}

class _AppSliverGridWidgetState extends State<AppSliverGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                    alignment: Alignment.center,
                    color: index.isEven ? Colors.blue : Colors.blueAccent),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3))
        ],
      ),
    );
  }
}
