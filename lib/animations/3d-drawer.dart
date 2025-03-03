import 'dart:math';

import 'package:flutter/material.dart';

class App3DDrawerPage extends StatefulWidget {
  const App3DDrawerPage({super.key});
  @override
  State<App3DDrawerPage> createState() => _App3DDrawerPageState();
}

class _App3DDrawerPageState extends State<App3DDrawerPage>
    with TickerProviderStateMixin {
  late AnimationController _xControllerForChild;
  late Animation<double> _yRotationAnimationForChild;

  late AnimationController _xControllerForDrawer;
  late Animation<double> _yRotationAnimationForDrawer;
  @override
  void initState() {
    // TODO: implement initState
    _xControllerForChild = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _yRotationAnimationForChild =
        Tween<double>(begin: 0, end: -pi / 2).animate(_xControllerForChild);
    _xControllerForDrawer = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _yRotationAnimationForDrawer =
        Tween<double>(begin: pi / 2.7, end: 0).animate(_xControllerForDrawer);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _xControllerForDrawer.dispose();
    _xControllerForChild.dispose();
    super.dispose();
  }

  _App3DDrawerPageState();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxDrag = screenWidth * 0.8;

    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        final delta = details.delta.dx / maxDrag;
        _xControllerForChild.value += delta;
        _xControllerForDrawer.value += delta;
      },
      onHorizontalDragEnd: (details) {
        if (_xControllerForChild.value < 0.5) {
          _xControllerForChild.reverse();
          _xControllerForDrawer.reverse();
        } else {
          _xControllerForChild.forward();
          _xControllerForDrawer.forward();
        }
      },
      child: AnimatedBuilder(
        animation:
            Listenable.merge([_xControllerForChild, _xControllerForDrawer]),
        builder: (context, child) => Stack(
          children: [
            Container(
              color: const Color(0xFF3F51B5),
            ),
            Transform(
                alignment: Alignment.centerLeft,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..translate(_xControllerForChild.value * maxDrag)
                  ..rotateY(_yRotationAnimationForChild.value),
                child: buildChild()),
            Transform(
                alignment: Alignment.centerRight,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..translate(
                      -screenWidth + _xControllerForDrawer.value * maxDrag)
                  ..rotateY(_yRotationAnimationForDrawer.value),
                child: buildDrawer())
          ],
        ),
      ),
    );
  }
}

Widget buildDrawer() {
  return Material(
    child: Container(
      color: const Color(0xff24283b),
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 80, top: 100),
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            "Item $index",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget buildChild() {
  return Scaffold(
    backgroundColor: Colors.pink,
    appBar: AppBar(centerTitle: true, title: const Text("Animated 3D Drawer")),
    body: Container(
      color: const Color(0xff414868),
    ),
  );
}
