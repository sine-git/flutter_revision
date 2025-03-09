import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideOnScrollPage extends StatefulWidget {
  const HideOnScrollPage({super.key});

  @override
  State<HideOnScrollPage> createState() => _HideOnScrollPageState();
}

class _HideOnScrollPageState extends State<HideOnScrollPage> {
  bool _isFabVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.blue,
            title: Text(
              "Hide on scroll",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                _isFabVisible = true;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                _isFabVisible = false;
              });
            }

            return true;
          },
          child: ListView.builder(
            itemCount: 200,
            itemBuilder: (context, index) => ListTile(
              title: Text("Title $index"),
              subtitle: Text("SubTitle $index"),
            ),
          ),
        ),
      ),
      floatingActionButton: !_isFabVisible
          ? null
          : FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
    );
  }
}
