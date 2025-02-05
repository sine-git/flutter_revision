import 'package:flutter/material.dart';
import 'package:flutter_revision/green-beauty/components/star-shape.dart';
import 'package:flutter_revision/green-beauty/pages/onboarding/build/tag.dart';
import 'package:flutter_revision/green-beauty/shapes/polygone.dart';

import '../../../components/beauty-image-avatar.dart';

class ImageSection extends StatefulWidget {
  const ImageSection({super.key});

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            BeautyImageAvatar(
              width: 200,
              height: 250,
              image: "assets/images/woman-smile.jpg",
            ),
            Positioned(
              left: -10,
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(152, 190)),
                    border: Border.all(
                        width: 2,
                        color: Theme.of(context).colorScheme.primary)),
              ),
            ),
            const Positioned(top: -30, right: 0, child: Tag()),
            Positioned(
              left: -5,
              bottom: 0,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  StarShape(
                    color: Theme.of(context).colorScheme.primary,
                    width: 60,
                    height: 60,
                  ),
                  Positioned(
                    left: -50,
                    top: -10,
                    child: StarShape(
                      color: Theme.of(context).colorScheme.primary,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: -20,
                    child: StarShape(
                      color: Theme.of(context).colorScheme.primary,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          top: 0,
          left: -50,
          child: Transform.rotate(
            angle: 0.3,
            child: BeautyImageAvatar(
              width: 100,
              height: 125,
              image: "assets/images/woman-smile.jpg",
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -50,
          child: Transform.rotate(
            angle: -0.2,
            child: BeautyImageAvatar(
              width: 100,
              height: 125,
              image: "assets/images/woman-smile.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
