import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenteredImageMaskPage extends StatefulWidget {
  const CenteredImageMaskPage({super.key});

  @override
  State<CenteredImageMaskPage> createState() => _CenteredImageMaskPageState();
}

class _CenteredImageMaskPageState extends State<CenteredImageMaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Centered Image Mask"),
      ),
      body: Center(
        child: ClipPath(
          clipper: OvalClipPath(),
          child: Image.network(
              fit: BoxFit.cover,
              height: 350,
              width: 300,
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg'),
        ),
      ),
    );
  }
}

class OvalClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    //path.moveTo(size.width / 2, 0);
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    //path.lineTo(size.width / 2, 0);
    path.close();
    //path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
