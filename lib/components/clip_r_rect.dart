import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppClipRRect extends StatefulWidget {
  const AppClipRRect({super.key});

  @override
  State<AppClipRRect> createState() => _AppClipRRectState();
}

class _AppClipRRectState extends State<AppClipRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(40),
              child: ClipRRect(
                //    clipper: MyImageClipper(),

                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.8, color: Colors.white)),
                  child: Column(
                    children: [
                      Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg'),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("This is the description of the product"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyImageClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
