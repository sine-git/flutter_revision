import 'package:flutter/material.dart';

class AppDraggableScrollable extends StatefulWidget {
  const AppDraggableScrollable({super.key});

  @override
  State<AppDraggableScrollable> createState() => _AppDraggableScrollableState();
}

class _AppDraggableScrollableState extends State<AppDraggableScrollable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Image.network(
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        DraggableScrollableSheet(
          minChildSize: 0.5,
          expand: true,
          builder: (context, scrollController) => Container(
              decoration: const BoxDecoration(
                /*     borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)) */
                color: Colors.blue,
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    "Item $index",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
        ),
      ]),
    );
  }
}
