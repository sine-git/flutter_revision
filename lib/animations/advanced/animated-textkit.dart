import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimtatedTextKitPage extends StatefulWidget {
  const AnimtatedTextKitPage({super.key});

  @override
  State<AnimtatedTextKitPage> createState() => _AnimttaedTextStateKitPage();
}

class _AnimttaedTextStateKitPage extends State<AnimtatedTextKitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          child: buildColorisedAnimation(),
        ),
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
