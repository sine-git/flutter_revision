import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/pink-home-page/colored-icon-button.dart';
import 'package:flutter_revision/pages/pink-home-page/community-card.dart';
import 'package:flutter_revision/pages/pink-home-page/custom-path.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0E4),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: false,
              pinned: true,
              leading: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/pink-suit.jpeg"),
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    CupertinoIcons.chevron_down,
                    size: 20,
                  ),
                )
              ],
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Frank Frank",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Animation",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w200)),
                ],
              ),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  //   height: MediaQuery.of(context).size.height * 0.6,
                  alignment: Alignment.center,
                  //color: Colors.blue,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFAEE6), Color(0xFFFFF0E4)])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: ClipPath(
                        clipBehavior: Clip.antiAlias,
                        clipper: PinkCusomClipPath(),
                        child: Image.asset(
                          "assets/images/pink-suit-jean-resized.jpeg",
                          fit: BoxFit.cover,
                          width: 380,
                          height: 400,
                        )

                        /* Image.asset(
                    "assets/images/pink-vest-avatar.jpeg",
                    fit: BoxFit.fitHeight,
                                          ), */
                        ),
                  ),
                ),
              )),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "00:38:21",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "00:38:21",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColoredIconButton(
                            text: "Pause",
                            textColor: Colors.white,
                            backgroundColor: Colors.black,
                            showIcon: true,
                            showText: true,
                            icon: Icons.pause,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ColoredIconButton(
                                text: "723",
                                textColor: Colors.black,
                                iconColor: Colors.grey,
                                backgroundColor: Colors.white,
                                showIcon: true,
                                showText: true,
                                icon: Icons.favorite,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ColoredIconButton(
                                text: "35",
                                textColor: Colors.black,
                                backgroundColor: Colors.white,
                                iconColor: Colors.grey,
                                showIcon: true,
                                showText: true,
                                icon: CupertinoIcons.chat_bubble_fill,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ColoredIconButton(
                                textColor: Colors.white,
                                backgroundColor: Colors.black,
                                showIcon: true,
                                showText: false,
                                icon: Icons.pause,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: CommunityCard(
                              minutes: 23,
                              description: "5 Tips To Recharge Your Motivation",
                              members: 25,
                              backgroundGradient: const [
                                Color(0xFFFE953C),
                                Color(0xFFFFFFFF),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                              child: CommunityCard(
                                  minutes: 42,
                                  description:
                                      "5 Tips To Recharge Your Motivation",
                                  members: 25,
                                  backgroundGradient: const [
                                Color(0xFFFFE258),
                                Color(0xFFFFFFFF)
                              ]))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
