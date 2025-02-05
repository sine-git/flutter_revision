import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSliverToBoxAdaper extends StatefulWidget {
  const AppSliverToBoxAdaper({super.key});

  @override
  State<AppSliverToBoxAdaper> createState() => AppSliverToBoxAdaperState();
}

class AppSliverToBoxAdaperState extends State<AppSliverToBoxAdaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              width: 20,
              child: Text("Sliver to Box AdaptAer"),
            ),
          )
        ],
      ),
    );
  }
}
