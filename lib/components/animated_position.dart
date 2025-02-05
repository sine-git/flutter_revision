import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedPosition extends StatefulWidget {
  const AppAnimatedPosition({super.key});

  @override
  State<AppAnimatedPosition> createState() => _AppAnimatedPositionState();
}

class _AppAnimatedPositionState extends State<AppAnimatedPosition> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Center(
          child: SizedBox(
              //alignment: Alignment.center,
              //color: Colors.blue,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      // bottom: 0,
                      //right: 0,
                      //left: 0,
                      child: ClipOval(
                        child: Image.network(
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      )
                      /*   Container(
                      color: Colors.blue,
                      height: 50,
                      width: 50,
                    ), */
                      ),
                ],
              )

              /*    Stack(children: [
              Container(
                height: 40,
                width: 40,
                color: Colors.blue,
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                bottom: _selected ? 100 : 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = !_selected;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ]), */
              ),
        ),
      ),
    );
  }
}
