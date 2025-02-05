import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBuilder extends StatefulWidget {
  const AppBuilder({super.key});

  @override
  State<AppBuilder> createState() => _AppBuilderState();
}

class _AppBuilderState extends State<AppBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

myWidget() => Builder(builder: (context) {
      return Text(
        'Text with theme',
        style: Theme.of(context).textTheme.displayLarge,
      );
    });
