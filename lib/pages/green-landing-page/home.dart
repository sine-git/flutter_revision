import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/green-landing-page/category-job-button.dart';
import 'package:flutter_revision/pages/green-landing-page/job-card.dart';
import 'package:flutter_revision/pages/green-landing-page/navigation_bar.dart';
import 'package:flutter_revision/pages/green-landing-page/recommandation_card.dart';
import 'package:flutter_revision/pages/green-landing-page/sliver-app-bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffE2F0E9),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.notifications),
            )
          ],
          // backgroundColor: Colors.blue,
          title: const Text.rich(TextSpan(
              style: TextStyle(fontSize: 14),
              text: "Hi,",
              children: [
                TextSpan(
                    text: " Onky Soerya",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ])),
        ),
        backgroundColor: const Color(0xFFF3F4F4),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.42,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffE2F0E9), Color(0xffE2F0E9)])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
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
                          )
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
              )
            ],
          ),
        ),
        bottomNavigationBar: const AppNavigationBar());
  }
}
