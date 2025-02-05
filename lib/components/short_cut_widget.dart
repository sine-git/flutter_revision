import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}

class AppShortCutWidget extends StatefulWidget {
  const AppShortCutWidget({super.key});

  @override
  State<AppShortCutWidget> createState() => _AppShortCutWidgetState();
}

class _AppShortCutWidgetState extends State<AppShortCutWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shortcuts(
            shortcuts: {
              LogicalKeySet(LogicalKeyboardKey.arrowUp):
                  const IncrementIntent(),
              LogicalKeySet(LogicalKeyboardKey.arrowDown):
                  const DecrementIntent()
            },
            child: Actions(
              actions: {
                IncrementIntent: CallbackAction(
                  onInvoke: (intent) {
                    setState(() {
                      count += 1;
                    });
                    return null;
                  },
                ),
                DecrementIntent: CallbackAction(
                  onInvoke: (intent) {
                    setState(() {
                      count -= 1;
                    });
                    return null;
                  },
                )
              },
              child: Focus(
                child: Text(
                  "Count: $count",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ),
    );
  }
}
