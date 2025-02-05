import 'package:flutter/material.dart';

class AppGridTile extends StatefulWidget {
  const AppGridTile({super.key});

  @override
  State<AppGridTile> createState() => _AppGridTileState();
}

class _AppGridTileState extends State<AppGridTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: GridTile(
            header: Container(
              color: Colors.pink.withOpacity(0.5),
              height: 40,
              child: const Center(
                  child: Text(
                "Header",
                style: TextStyle(color: Colors.white),
              )),
            ),
            footer: Container(
              color: Colors.pink.withOpacity(0.5),
              height: 40,
              child: const Center(
                  child: Text(
                "Header",
                style: TextStyle(color: Colors.white),
              )),
            ),
            child: Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
