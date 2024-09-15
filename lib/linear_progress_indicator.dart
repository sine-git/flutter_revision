import 'package:flutter/material.dart';

class AppLinearProgressIndicator extends StatefulWidget {
  const AppLinearProgressIndicator({super.key});

  @override
  State<AppLinearProgressIndicator> createState() =>
      _AppLinearProgressIndicatorState();
}

class _AppLinearProgressIndicatorState extends State<AppLinearProgressIndicator>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500))
    ..addListener(() {
      setState(() {});
    });

  @override
  void initState() {
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
