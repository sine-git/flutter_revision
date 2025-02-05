import 'package:flutter/material.dart';

class AppCustomScrollView extends StatefulWidget {
  const AppCustomScrollView({super.key});

  @override
  State<AppCustomScrollView> createState() => _AppCustomScrollViewState();
}

class _AppCustomScrollViewState extends State<AppCustomScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 50,
                (context, index) => Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9)],
                  child: Text('Grid item $index'),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
