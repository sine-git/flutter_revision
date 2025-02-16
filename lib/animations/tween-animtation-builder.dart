import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweeAnimationBuilderPage extends StatefulWidget {
  const TweeAnimationBuilderPage({super.key});

  @override
  State<TweeAnimationBuilderPage> createState() =>
      _TweeAnimationBuilderPageState();
}

double defaultWidth = 100;

Color getRandomColor() => Color(0xFF000000 + math.Random().nextInt(0x00FFFFFF));

class _TweeAnimationBuilderPageState extends State<TweeAnimationBuilderPage> {
  final _isZoomedIn = false;
  final _buttonTitle = "Zoom in";
  final double _width = defaultWidth;

  Color _color = getRandomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ClipPath(
            clipper: CircleClipper(),
            child: TweenAnimationBuilder(
                duration: const Duration(seconds: 2),
                tween: ColorTween(begin: getRandomColor(), end: _color),
                onEnd: () {
                  setState(() {
                    _color = getRandomColor();
                  });
                },
                builder: (context, value, child) {
                  //print("Color changed");
                  return ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      _color,
                      BlendMode.srcATop,
                    ),
                    child: child,
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.red),
                )),
          ),
        ));
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    Rect circle = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    path.addOval(circle);
    /* path.moveTo(size.width / 2, 0);
    path.arcToPoint(Offset(0, size.height / 2),
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: false);
    path.arcToPoint(Offset(size.width, size.height / 2),
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: false);

    path.arcToPoint(Offset(size.width / 2, size.height),
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: false);

    path.arcToPoint(Offset(size.width, size.height / 2),
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: false);
    path.arcToPoint(Offset(size.width / 2, 0),
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: false);
    path.close(); */
    /*  Rect circle = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    path.addOval(circle); */
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
