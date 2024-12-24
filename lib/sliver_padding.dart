import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSliverPadding extends StatefulWidget {
  const AppSliverPadding({super.key});

  @override
  State<AppSliverPadding> createState() => AppSliverPaddingState();
}

class AppSliverPaddingState extends State<AppSliverPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Image.network(
                  "https://cdn.pixabay.com/photo/2023/12/14/20/24/christmas-balls-8449615_1280.jpg")
            ])),
          ),
        ],
      ),
    );
  }
}
