// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class AnimatedSwipePage extends StatefulWidget {
  const AnimatedSwipePage({super.key});

  @override
  State<AnimatedSwipePage> createState() => _AnimatedSwipePage();
}

class _AnimatedSwipePage extends State<AnimatedSwipePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: TinderCard(
          imageUrl:
              "https://discoverymood.com/wp-content/uploads/2020/04/Mental-Strong-Women-min.jpg"),
    ));
  }
}

class TinderCard extends StatelessWidget {
  String imageUrl;
  TinderCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: buildFrontCard(),
    );
  }

  Widget buildFrontCard() {
    return GestureDetector(child: buildCard());
  }

  Widget buildCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: const Alignment(-0.3, 0),
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover))),
    );
  }
}
