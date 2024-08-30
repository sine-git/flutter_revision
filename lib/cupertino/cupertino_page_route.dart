import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton.filled(
              child: Text("Go to page two"),
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => PageTwo(),
                ));
              })
        ],
      ),
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => PageOne()));
          },
        )),
        child: Center(
          child: Text("Welcome to the new page"),
        ));
  }
}
