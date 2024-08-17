import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_revision/theme_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: Text("My App"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).switchTheme();
            },
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(icon: Icon(Icons.call), text: ""),
                Tab(icon: Icon(Icons.shopping_bag), text: "")
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Center(child: Text("Tab1")),
                  Center(child: Text("Tab2")),
                  Center(child: Text("Tab3"))
                ],
              ))
            ],
          )),
    );
  }
}
