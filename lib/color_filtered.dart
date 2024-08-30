import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppColorFiltered extends StatefulWidget {
  const AppColorFiltered({super.key});

  @override
  State<AppColorFiltered> createState() => _AppColorFilteredState();
}

class _AppColorFilteredState extends State<AppColorFiltered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.purpleAccent.withOpacity(0.1), BlendMode.color),
          child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg'),
        ),
      ),
    );
  }
}
