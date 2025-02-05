import 'package:flutter/material.dart';

class AppBottomNavigationWidget extends StatefulWidget {
  const AppBottomNavigationWidget({super.key});

  @override
  State<AppBottomNavigationWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppBottomNavigationWidget> {
  List<String> pages = ["Home", "Person", "Hearing"];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[pageIndex]),
      ),
      body: Center(
        child: Container(
          child: const Text("Hello my friend"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shope"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.hearing,
                ),
                label: "Hearing")
          ]),
    );
  }
}
