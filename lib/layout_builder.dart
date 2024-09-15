import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatefulWidget {
  const AppLayoutBuilder({super.key});

  @override
  State<AppLayoutBuilder> createState() => _AppLayoutBuilderState();
}

class _AppLayoutBuilderState extends State<AppLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 600) {
          return Center(
              child: Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"));
        } else {
          return const Scaffold(body: Center(child: Text("This is the image")));
        }
      },
    );
  }
}
