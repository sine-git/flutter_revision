import 'package:flutter/material.dart';

class AppGridView extends StatefulWidget {
  const AppGridView({super.key});

  @override
  State<AppGridView> createState() => _AppGridViewState();
}

class _AppGridViewState extends State<AppGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
            ),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
      ),
    );
  }
}
