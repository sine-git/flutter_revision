import 'package:flutter/material.dart';

class AppElevatedButton extends StatefulWidget {
  const AppElevatedButton({super.key});

  @override
  State<AppElevatedButton> createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Button 1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
            ElevatedButton.icon(
                onPressed: () {
                  try {
                    throw Exception("This is en error");
                  } catch (e) {
                    FlutterError.reportError(FlutterErrorDetails(
                        exception: e,
                        library: "CUSTOM MESSAGE ONE",
                        context:
                            ErrorSummary("The following message is an error")));
                  }
                },
                icon: const Icon(Icons.favorite),
                label: const Text("Button 3"),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ],
        ),
      ),
    );
  }
}
