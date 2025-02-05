import 'package:flutter/material.dart';
import 'package:flutter_revision/green-beauty/components/beauty-image-avatar.dart';
import 'package:flutter_revision/green-beauty/components/star-shape.dart';
import 'package:flutter_revision/green-beauty/pages/onboarding/build/bottom-section.dart';
import 'package:flutter_revision/green-beauty/pages/onboarding/build/image-section.dart';
import 'package:flutter_revision/green-beauty/shapes/oval-shape.dart';
import 'package:flutter_revision/green-beauty/shapes/polygone.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(width: double.infinity, child: ImageSection()),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 50),
            child: BottomSection())
      ],
    ));
  }
}
