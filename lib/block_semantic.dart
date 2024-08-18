import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBlocSemantic extends StatefulWidget {
  const AppBlocSemantic({super.key});

  @override
  State<AppBlocSemantic> createState() => _AppBlocSemanticState();
}

class _AppBlocSemanticState extends State<AppBlocSemantic> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    isShow = true;
                  });
                },
                child: Text("Press here")),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orange,
                  child: SizedBox(
                      width: 200,
                      child: Column(children: [
                        Text("This is a card"),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                isShow = false;
                              });
                            },
                            child: Text("Press again"))
                      ])),
                ),
              )
          ],
        ),
      ),
    );
  }
}
