import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              leading: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage("assets/images/pink-vest-avatar.jpeg"),
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
                  color: Colors.blue,
                  /* decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFAEE6), Color(0xFFFFF0E4)])), */
                  child: Center(
                    child: /*  Image.asset(
                      "assets/images/pink-vest-background.jpg",
                      fit: BoxFit.fill,
                      height: 300,
                    ), */
                        ClipPath(
                      clipBehavior: Clip.antiAlias,
                      clipper: PinkCusomClipPath(),
                      child: Image.asset(
                        "assets/images/pink-vest-background.jpg",
                        fit: BoxFit.contain,
                        height: 320,
                        width: 320,
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
