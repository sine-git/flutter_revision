import 'package:flutter/material.dart';

class AppHeroWidget extends StatefulWidget {
  const AppHeroWidget({super.key});

  @override
  State<AppHeroWidget> createState() => _AppHeroWidgetState();
}

class _AppHeroWidgetState extends State<AppHeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
          title: const Text("This is my hero"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyFavorite()));
          },
          trailing: const Hero(
            tag: "my-favorite",
            child: Icon(Icons.favorite),
          )),
    );
  }
}

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("My favorites")),
      body: Hero(
          tag: "my-favorite",
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.pink,
            ),
          )),
    );
  }
}
