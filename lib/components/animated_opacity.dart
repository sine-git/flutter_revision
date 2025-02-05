import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedOpacity extends StatefulWidget {
  const AppAnimatedOpacity({super.key});

  @override
  State<AppAnimatedOpacity> createState() => App_AnimatedOpacityState();
}

class App_AnimatedOpacityState extends State<AppAnimatedOpacity> {
  double _opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _opacityLevel,
            child: FlutterLogo(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacityLevel = _opacityLevel == 1 ? 0 : 1;
                });
              },
              child: Text("Press this"))
        ]),
      ),
    );
  }
}
