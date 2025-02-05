import 'package:flutter/material.dart';

class AppGridPaper extends StatefulWidget {
  const AppGridPaper({super.key});

  @override
  State<AppGridPaper> createState() => _AppGridPaperState();
}

class _AppGridPaperState extends State<AppGridPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridPaper(
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
