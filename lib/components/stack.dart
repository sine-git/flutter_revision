import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStack extends StatefulWidget {
  const AppStack({super.key});

  @override
  State<AppStack> createState() => AppStackState();
}

class AppStackState extends State<AppStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Stack(
          children: [
            Center(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2024/12/13/10/23/woman-9264738_1280.jpg",
                height: 200,
                width: 200,
              ),
            ),
            Center(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2022/09/29/03/17/baby-7486419_1280.jpg",
                height: 100,
                width: 100,
              ),
            )
          ],
        )));
  }
}
