import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvedPathPage extends StatefulWidget {
  const CurvedPathPage({super.key});

  @override
  State<CurvedPathPage> createState() => _CurvedPathPageState();
}

class _CurvedPathPageState extends State<CurvedPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.yellow,
          child: ClipPath(
            clipper: CurvedPath(),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //gradient: LinearGradient(colors: [Colors.black, Colors.white]),
                  color: Colors.blue),
              width: 400,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    Offset start = Offset(0, size.height);

    //Offset control2 = Offset(size.width / 2, size.height / 2);
    //Offset control1 = Offset(size.width / 2, size.height / 2);

    /*  path.moveTo(0, size.height);
    path.cubicTo(0.1 * size.width, 0.8 * size.height, 0.4 * size.width,
        0.85 * size.height, 0.51 * size.width, 0.88 * size.height);
    path.cubicTo(0.6 * size.width, 0.9 * size.height, 0.7 * size.width,
        0.95 * size.height, size.width, 0.95 * size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); */
    //path.close();
    path.moveTo(0, size.height * 0.95);
    path.cubicTo(0.04 * size.width, 0.92 * size.height, 0.12 * size.width,
        0.84 * size.height, 0.54 * size.width, 0.95 * size.height);
    path.cubicTo(0.8 * size.width, size.height + 10, 0.88 * size.width,
        size.height * 0.95, size.width, 0.90 * size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
