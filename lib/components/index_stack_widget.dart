import 'package:flutter/material.dart';

class AppIndexStack extends StatefulWidget {
  const AppIndexStack({super.key});

  @override
  State<AppIndexStack> createState() => _AppIndexStackState();
}

class _AppIndexStackState extends State<AppIndexStack> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: const Text("1")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: const Text("2")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: const Text("3")),
              ],
            ),
            IndexedStack(
              index: _index,
              children: [
                Container(
                  color: Colors.blue,
                  width: 300,
                  height: 300,
                ),
                Container(
                  color: Colors.pink,
                  width: 300,
                  height: 300,
                ),
                Container(
                  color: Colors.purple,
                  width: 300,
                  height: 300,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
