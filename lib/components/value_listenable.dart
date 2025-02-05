import 'package:flutter/material.dart';

ValueNotifier<int> number = ValueNotifier(0);

class AppValueListenableWidget extends StatefulWidget {
  const AppValueListenableWidget({super.key});

  @override
  State<AppValueListenableWidget> createState() =>
      _AppValueListenableWidgetState();
}

class _AppValueListenableWidgetState extends State<AppValueListenableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  number.value += 1;
                },
                icon: const Icon(Icons.add)),
            const SizedBox(
              height: 30,
            ),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) => Text("$value"),
            )
          ],
        ),
      ),
    );
  }
}
