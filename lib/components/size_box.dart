import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSizeBoxWidget extends StatefulWidget {
  const AppSizeBoxWidget({super.key});

  @override
  State<AppSizeBoxWidget> createState() => AppSizeBoxWidgetState();
}

class AppSizeBoxWidgetState extends State<AppSizeBoxWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: Card(
            color: Colors.yellow,
            child: Text("SizedBox"),
          ),
        ),
      ),
    );
  }
}
