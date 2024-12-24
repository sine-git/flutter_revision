import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSliverOpacity extends StatefulWidget {
  const AppSliverOpacity({super.key});

  @override
  State<AppSliverOpacity> createState() => AppSliverOpacityState();
}

class AppSliverOpacityState extends State<AppSliverOpacity> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverOpacity(
            opacity: 0.5,
            sliver: SliverToBoxAdapter(
              child: Card(
                color: Colors.blue,
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: Center(
                    child: Text("Flutter Mapp"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
