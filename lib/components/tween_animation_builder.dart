import 'package:flutter/material.dart';

class AppTweenAnimationBuilderWidget extends StatefulWidget {
  const AppTweenAnimationBuilderWidget({super.key});

  @override
  State<AppTweenAnimationBuilderWidget> createState() =>
      _AppTweenAnimationBuilderWidgetState();
}

class _AppTweenAnimationBuilderWidgetState
    extends State<AppTweenAnimationBuilderWidget> {
  double _targetValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: _targetValue),
          duration: const Duration(milliseconds: 500),
          builder: (context, value, child) {
            return IconButton(
                iconSize: value,
                onPressed: () {
                  setState(() {
                    _targetValue = _targetValue == 100 ? 250 : 100;
                  });
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ));
          },
        ),
      ),
    );
  }
}
