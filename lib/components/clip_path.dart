import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppClipPath extends StatefulWidget {
  const AppClipPath({super.key});

  @override
  State<AppClipPath> createState() => AppClipPathState();
}

class AppClipPathState extends State<AppClipPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              color: Colors.pink,
              width: double.infinity,
              height: 300,
            )),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    var path = Path();

    // Début du chemin en bas à gauche
    path.lineTo(0.0, size.height - 60);

    // Première vague inversée
    var firstControlPoint = Offset(size.width / 4, size.height - 120);
    var firstEndPoint = Offset(size.width / 2, size.height - 60);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // Deuxième vague inversée
    var secondControlPoint = Offset(size.width * 3 / 4, size.height);
    var secondEndPoint = Offset(size.width, size.height - 60);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // Fin du chemin à droite en bas
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
