import 'package:flutter/material.dart';

class AppPositionedTransitionWidget extends StatefulWidget {
  const AppPositionedTransitionWidget({super.key});

  @override
  State<AppPositionedTransitionWidget> createState() =>
      _AppPositionedTransitionWidgetState();
}

class _AppPositionedTransitionWidgetState
    extends State<AppPositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final Size biggest = constraints.biggest;
      return Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromSize(
                  Rect.fromLTWH(biggest.width / 2 - smallLogo / 2, 0, smallLogo,
                      smallLogo),
                  biggest),
              end: RelativeRect.fromSize(
                  Rect.fromLTWH(biggest.width / 2 - bigLogo / 2,
                      biggest.height - bigLogo, bigLogo, bigLogo),
                  biggest),
            ).animate(CurvedAnimation(
                parent: _animationController, curve: Curves.linearToEaseOut)),
            child: Container(
              color: Colors.pink,
              width: 50,
              height: 50,
            ),
          ),
        ],
      );
    }));
  }
}
