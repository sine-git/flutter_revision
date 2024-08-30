import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() => App_ContainerState();
}

class App_ContainerState extends State<AppContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(
                "Hello my friend",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // height: 100,
              constraints: BoxConstraints.expand(height: 100),
              //transform: Matrix4.rotationZ(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
