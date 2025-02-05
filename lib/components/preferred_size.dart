import 'package:flutter/material.dart';

class AppPreferedSizeWidget extends StatefulWidget {
  const AppPreferedSizeWidget({super.key});

  @override
  State<AppPreferedSizeWidget> createState() => _AppPreferedSizeWidgetState();
}

class _AppPreferedSizeWidgetState extends State<AppPreferedSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange, Colors.purple])),
          )),
    );
  }
}
