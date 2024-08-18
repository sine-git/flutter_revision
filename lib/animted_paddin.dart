import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedPadding extends StatefulWidget {
  const AppAnimatedPadding({super.key});

  @override
  State<AppAnimatedPadding> createState() => _AppAnimatedPaddingState();
}

class _AppAnimatedPaddingState extends State<AppAnimatedPadding> {
  double _padding = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(_padding),
              duration: Duration(seconds: 2),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
            Text("Padding is ${_padding}"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print("Old padding is ${_padding}");

                    _padding = _padding == 8 ? 50 : 8;

                    print("New padding is ${_padding}");
                  });
                },
                child: Text("Click here"))
          ],
        ),
      ),
    );
  }
}
