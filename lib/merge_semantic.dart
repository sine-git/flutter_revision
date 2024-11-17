import 'package:flutter/material.dart';

class AppMergeSemanticWidget extends StatefulWidget {
  const AppMergeSemanticWidget({super.key});

  @override
  State<AppMergeSemanticWidget> createState() => _AppMergeSemanticWidgetState();
}

class _AppMergeSemanticWidgetState extends State<AppMergeSemanticWidget> {
  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Row(
        children: const [
          Text("One text"),
          Text("Another one"),
        ],
      ),
    );
  }
}
