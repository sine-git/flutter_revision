import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/pink-home-page/community-card.dart';
import 'package:flutter_revision/pages/pink-home-page/custom-path.dart';

class WheelCardWidget extends StatelessWidget {
  String title;
  String subTitle;
  String image;
  String profilImage;
  Color color;
  CustomClipper<Path> clipper;
  WheelCardWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.color,
      required this.profilImage,
      required this.clipper});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,

            //color: Colors.purple,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /* ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/pink-suit.jpeg"),
                  ),
                  title: Text("Jennifer"),
                  subtitle: Text("Music"),
                ), */
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(profilImage),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subTitle,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1)),
                  child: const Icon(
                    Icons.close,
                    size: 12,
                  ),
                )
              ],
            ),
            Flexible(
              child: ClipPath(
                  clipBehavior: Clip.antiAlias,
                  clipper: clipper,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                    alignment: Alignment.topCenter,
                    // alignment: Alignment.center,
                    //scale: 1.1,
                  )

                  /* Image.asset(
                      "assets/images/pink-vest-avatar.jpeg",
                      fit: BoxFit.fitHeight,
                                            ), */
                  ),
            ),
          ],
        ));
  }
}
