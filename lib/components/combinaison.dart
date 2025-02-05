import 'package:flutter/material.dart';

class AppCombinaisonWidget extends StatefulWidget {
  const AppCombinaisonWidget({super.key});

  @override
  State<AppCombinaisonWidget> createState() => _AppCombinaisonWidgetState();
}

class _AppCombinaisonWidgetState extends State<AppCombinaisonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),

      //endDrawer: const Drawer(),

      appBar: AppBar(
        title: const Text("MyApp"),
        leading: Builder(builder: (context) {
          return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Hello my friend"),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: const Text("Show snackbar")),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: const Text("Show drawer"));
            })
          ],
        ),
      ),
    );
  }
}
