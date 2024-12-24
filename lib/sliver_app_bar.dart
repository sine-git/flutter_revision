import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => SliverAppBarWidgetyWidgetState();
}

class SliverAppBarWidgetyWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Flutter Map",
                style: TextStyle(color: Colors.white),
              ),
              background: Image.network(
                "https://cdn.pixabay.com/photo/2024/12/13/10/23/woman-9264738_1280.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => ListTile(
              title: Text("item $index"),
            ),
          )
        ],
      ),
    );
  }
}
