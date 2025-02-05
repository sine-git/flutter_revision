import 'package:flutter/material.dart';

class AppMaterialBannerWidget extends StatefulWidget {
  const AppMaterialBannerWidget({super.key});

  @override
  State<AppMaterialBannerWidget> createState() =>
      _AppMaterialBannerWidgetState();
}

class _AppMaterialBannerWidgetState extends State<AppMaterialBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(content: const Text("Subscribe"), actions: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: const Text("Close"),
                )
              ]));
            },
            child: const Text("Subscribe")),
      ),
    );
  }
}
