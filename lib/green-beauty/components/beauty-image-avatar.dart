import 'package:flutter/material.dart';

class BeautyImageAvatar extends StatelessWidget {
  String image;
  double width;
  double height;

  BeautyImageAvatar(
      {super.key,
      required this.image,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(152, 190)),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
