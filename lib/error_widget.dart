import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppErrorWidget extends StatefulWidget {
  const AppErrorWidget({super.key});

  @override
  State<AppErrorWidget> createState() => _AppErrorWidgetState();
}

class _AppErrorWidgetState extends State<AppErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 2,
            width: double.infinity,
            child: SingleChildScrollView(
              child: ListView(
                children: [Container(), const CupertinoApp()],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
