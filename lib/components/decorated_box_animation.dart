import 'package:flutter/material.dart';

class AppDecoratedBoxTransition extends StatefulWidget {
  const AppDecoratedBoxTransition({super.key});

  @override
  State<AppDecoratedBoxTransition> createState() =>
      AppDecoratedBoxTransitionState();
}

class AppDecoratedBoxTransitionState extends State<AppDecoratedBoxTransition>
    with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(60),
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black87)]),
      end: BoxDecoration(
        color: Colors.white,
        border: Border.all(style: BorderStyle.none),
      ));

  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DecoratedBoxTransition(
            decoration: decorationTween.animate(_animationController),
            child: const SizedBox(
              height: 50,
              width: 50,
              child: FlutterLogo(),
            )),
      ),
    );
  }
}
