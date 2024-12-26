import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/green-landing-page/category-job-button.dart';
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
    return const Scaffold(
        backgroundColor: Color(0xFFF3F4F4),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            AppSliverAppBar(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: AppNavigationBar());
  }
}
