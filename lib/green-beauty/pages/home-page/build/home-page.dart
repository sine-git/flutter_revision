// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_revision/components/carousel_view.dart';
import 'package:flutter_revision/green-beauty/pages/home-page/components/image-indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<String> images = [
    "assets/images/traditional-women-yellow.jpeg",
    "assets/images/pink-suit.jpeg",
    "assets/images/guitar.jpg",
    "assets/images/pink-suit.jpeg",
  ];

  List<String> quantities = [
    "100ml",
    "200ml",
    "300ml",
    "400ml",
    "500ml",
    "600ml",
    "700ml",
    "800ml",
    "900ml",
    "1000ml",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                        print("Page changed $currentPage");
                      });
                    },
                    children: List.generate(
                        images.length,
                        (index) =>
                            Image.asset(fit: BoxFit.cover, images[index]))),
                Positioned(
                  bottom: 10,
                  child: ImageIndicator(
                    numberOfPage: images.length,
                    currentPage: currentPage,
                  ),
                )
              ],
            ),
            leading: AppIconButtons(
              backgroundColor: Theme.of(context).colorScheme.surface,
              iconColor: Theme.of(context).colorScheme.inverseSurface,
              icon: Icons.arrow_back,
            ),
            actions: [
              AppIconButtons(
                backgroundColor: Theme.of(context).colorScheme.surface,
                iconColor: Theme.of(context).colorScheme.inverseSurface,
                icon: Icons.favorite_outline,
              ),
              AppIconButtons(
                backgroundColor: Theme.of(context).colorScheme.surface,
                iconColor: Theme.of(context).colorScheme.inverseSurface,
                icon: Icons.share_outlined,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Skin Care"),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Padding(
                            padding: EdgeInsets.only(left: 6.0),
                            child: Text("4.9"),
                          )
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "SkilkScuplt Serum",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionTitle(
                        text: "Select Size",
                      ),
                      ListTile(
                        title: const Text(
                          "Leslie Alexander",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Opulent Allure Cosmetic",
                          style: TextStyle(fontSize: 12),
                        ),
                        contentPadding: const EdgeInsets.all(0),
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/woman-smile.jpg")),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppIconButtons(
                              backgroundColor:
                                  Theme.of(context).colorScheme.scrim,
                              iconColor: Theme.of(context).colorScheme.primary,
                              icon: Icons.chat,
                            ),
                            AppIconButtons(
                              backgroundColor:
                                  Theme.of(context).colorScheme.scrim,
                              iconColor: Theme.of(context).colorScheme.primary,
                              icon: Icons.call,
                            ),
                          ],
                        ),
                      ),
                      SectionTitle(
                        text: "Select Size",
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: quantities.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: LiterQuantity(quantities[index]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SectionTitle(
                          text: "Product detail",
                        ),
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi.",
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: const Text("Total Price", style: TextStyle(fontSize: 12)),
          subtitle: const Text(
            "\$24",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20),
                  backgroundColor: Theme.of(context).colorScheme.primary),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class LiterQuantity extends StatelessWidget {
  String quantity;
  LiterQuantity(
    this.quantity, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: () {},
        child: Text(
          quantity,
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ));
  }
}

class SectionTitle extends StatelessWidget {
  String text;
  SectionTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}

class AppIconButtons extends StatelessWidget {
  Color iconColor;
  Color backgroundColor;
  IconData icon;

  AppIconButtons({
    Key? key,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
      ),
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
