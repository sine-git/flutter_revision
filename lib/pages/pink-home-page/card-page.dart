import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/green-landing-page/category-job-button.dart';
import 'package:flutter_revision/pages/pink-home-page/colored-icon-button.dart';
import 'package:flutter_revision/pages/pink-home-page/community-card.dart';
import 'package:flutter_revision/pages/pink-home-page/custom-path.dart';
import 'package:flutter_revision/pages/pink-home-page/heart-path.dart';
import 'package:flutter_revision/pages/pink-home-page/wheel-card.dart';

class WheelCardsPage extends StatefulWidget {
  const WheelCardsPage({super.key});

  @override
  State<WheelCardsPage> createState() => _WheelCardsPage();
}

class _WheelCardsPage extends State<WheelCardsPage> {
  List<dynamic> cards = [
    {
      "title": "Jennie Jefferson",
      "subTitle": "Film & Animation",
      "image": "assets/images/traditional-women-yellow.jpeg",
      "profilImage": "assets/images/traditional-women-yellow.jpeg",
      "color": const Color(0XFFDAD1C2),
      "clipper": PinkCusomClipPath()
    },
    {
      "title": "Mae Hopkins",
      "subTitle": "Film & Animation",
      "image": "assets/images/profile-mae.jpeg",
      "profilImage": "assets/images/profile-mae.jpeg",
      "color": const Color(0XFFCBAC80),
      "clipper": HeartCusomClipPath()
    },
    {
      "title": "Katie Schulz",
      "subTitle": "Film & Animation",
      "image": "assets/images/traditional-women-yellow.jpeg",
      "profilImage": "assets/images/traditional-women-yellow.jpeg",
      "color": const Color(0XFFE8E751),
      "clipper": PinkCusomClipPath()
    },
    {
      "title": "Virgina Wade",
      "subTitle": "Film & Animation",
      "image": "assets/images/traditional-women-yellow.jpeg",
      "profilImage": "assets/images/traditional-women-yellow.jpeg",
      "color": const Color(0XFF3EB076),
      "clipper": HeartCusomClipPath()
    },
    {
      "title": "Myrtie Jones",
      "subTitle": "Film & Animation",
      "image": "assets/images/traditional-women-yellow.jpeg",
      "profilImage": "assets/images/traditional-women-yellow.jpeg",
      "color": const Color(0XFFAF7ED1),
      "clipper": PinkCusomClipPath()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Bookmarks",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: PopupMenuButton(
                  itemBuilder: (context) => List.generate(
                    3,
                    (index) => const PopupMenuItem(child: Text("Item")),
                  ),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(children: [
            ListWheelScrollView(
                clipBehavior: Clip.none,
                itemExtent: 290,
                perspective: 0.001,
                diameterRatio: 1.8,
                squeeze: 1.8,
                //offAxisFraction: -0.5,
                children: cards
                    .map(
                      (e) => WheelCardWidget(
                        title: e["title"],
                        subTitle: e["title"],
                        image: e["image"],
                        profilImage: e["profilImage"],
                        color: e["color"],
                        clipper: e["clipper"],
                      ),
                    )
                    .toList()),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColoredIconButton(
                        text: "Search",
                        textColor: Colors.black,
                        iconColor: Colors.grey,
                        backgroundColor: Colors.white,
                        showIcon: true,
                        showText: true,
                        icon: Icons.search,
                      ),
                      ColoredIconButton(
                        text: "Filter",
                        textColor: Colors.black,
                        iconColor: Colors.grey,
                        backgroundColor: Colors.white,
                        showIcon: true,
                        showText: true,
                        icon: Icons.filter_alt,
                      ),
                    ],
                  ),
                ))
          ]),
        ));
  }
}
