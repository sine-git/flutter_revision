import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_revision/pages/green-landing-page/category-job-button.dart';
import 'package:flutter_revision/pages/green-landing-page/job-card.dart';
import 'package:flutter_revision/pages/green-landing-page/recommandation_card.dart';

class AppSliverAppBar extends StatefulWidget {
  const AppSliverAppBar({super.key});

  @override
  State<AppSliverAppBar> createState() => AppSliverAppBarState();
}

class AppSliverAppBarState extends State<AppSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,

      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(Icons.notifications),
        )
      ],
      backgroundColor: const Color(0xFFF3F4F4),
      // backgroundColor: Colors.blue,
      title: const Text.rich(TextSpan(
          style: TextStyle(fontSize: 14),
          text: "Hi,",
          children: [
            TextSpan(
                text: " Onky Soerya",
                style: TextStyle(fontWeight: FontWeight.bold))
          ])),
      expandedHeight: MediaQuery.of(context).size.height * 0.56,
      flexibleSpace: SizedBox(
        //  height: MediaQuery.of(context).size.height * 0.60,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.42,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffE2F0E9), Color(0xffE2F0E9)])),
            ),
            Positioned(
              top: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Come find a job",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "with us",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Featured Jobs",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AppJobCardWidget(
                                bodyTextColor: Colors.white,
                                backgroundColor: const Color(0xFF19804F),
                                leadCircleColor: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AppJobCardWidget(
                                bodyTextColor: Colors.black,
                                backgroundColor: Colors.white,
                                leadCircleColor: const Color(0xFF19804F)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AppJobCardWidget(
                                bodyTextColor: Colors.black,
                                backgroundColor: Colors.white,
                                leadCircleColor: const Color(0xFF19804F)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Category Jobs",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryJobButton(
                            backgroundColor: const Color(0xFFF5851D),
                            iconData: Icons.apple,
                            text: "Technology",
                            textColor: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryJobButton(
                            iconData: Icons.desktop_windows,
                            text: "Product Design",
                            textColor: const Color(0xFF6E6E6E),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryJobButton(
                            iconData: Icons.cloud,
                            text: "Marketing",
                            textColor: const Color(0xFF6E6E6E),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryJobButton(
                            iconData: Icons.cloud,
                            text: "Marketing",
                            textColor: const Color(0xFF6E6E6E),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Recommandations",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Row(
                      children: [
                        RecommandationCardWidget(),
                      ],
                    ),
                    const Row(
                      children: [
                        RecommandationCardWidget(),
                      ],
                    ),
                    const Row(
                      children: [
                        RecommandationCardWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
