import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTabBarWidget extends StatefulWidget {
  const AppTabBarWidget({
    super.key,
  });

  @override
  State<AppTabBarWidget> createState() => AppTabBarWidgetState();
}

class AppTabBarWidgetState extends State<AppTabBarWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Personne",
              icon: Icon(Icons.person),
            ),
            Tab(
              text: "Favorite",
              icon: Icon(Icons.favorite),
            ),
          ]),
          title: const Text("Flutter Mapp"),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Person"),
          ),
          Center(
            child: Text("Favorite"),
          ),
        ]),
      ),
    );
  }
}
