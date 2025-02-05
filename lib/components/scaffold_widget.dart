import 'package:flutter/material.dart';

class AppScaffoldWidget extends StatefulWidget {
  const AppScaffoldWidget({super.key});

  @override
  State<AppScaffoldWidget> createState() => _AppScaffoldWidgetState();
}

class _AppScaffoldWidgetState extends State<AppScaffoldWidget> {
  final int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("My app"),
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Center(
          child: ElevatedButton(
              onPressed: () {}, child: const Text("Hello my friend")),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.badge))
      ]),
    );
  }
}
