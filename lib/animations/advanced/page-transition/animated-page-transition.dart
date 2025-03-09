import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/animations/advanced/page-transition/second-page.dart';

class AnimtatedPageTransition extends StatefulWidget {
  const AnimtatedPageTransition({super.key});

  @override
  State<AnimtatedPageTransition> createState() =>
      _AnimtatedPageTransitionState();
}

class _AnimtatedPageTransitionState extends State<AnimtatedPageTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(PageTransition(
                duration: const Duration(seconds: 1),
                type: PageTransitionType.scale,
                alignment: Alignment.bottomCenter,
                builder: (context) => const SecondPage(),
              ));
            },
            child: const Text("Go to next page")),
      ),
    );
  }

  Widget buildWavyAnimation() {
    return AnimatedTextKit(animatedTexts: [
      WavyAnimatedText(
        "Hello my friend !!! ",
      ),
    ], repeatForever: true);
  }

  Widget buildColorisedAnimation() {
    return AnimatedTextKit(animatedTexts: [
      ColorizeAnimatedText(
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        colors: [Colors.blue, Colors.pink, Colors.purple],
        "Hello my friend !!! ",
      ),
    ], repeatForever: true);
  }
}
