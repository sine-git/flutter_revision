import 'package:flutter/material.dart';

class AppGridTileBar extends StatefulWidget {
  const AppGridTileBar({super.key});

  @override
  State<AppGridTileBar> createState() => _AppGridTileBarState();
}

class _AppGridTileBarState extends State<AppGridTileBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: GridTile(
            header: const GridTileBar(
              title: Text("My text is here"),
              leading: Icon(Icons.favorite),
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
