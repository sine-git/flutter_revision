import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoActivityIndicator extends StatefulWidget {
  const AppCupertinoActivityIndicator({super.key});

  @override
  State<AppCupertinoActivityIndicator> createState() =>
      _AppCupertinoActivityIndicatorState();
}

class _AppCupertinoActivityIndicatorState
    extends State<AppCupertinoActivityIndicator> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoActivityIndicator(
        radius: 70,
        color: Colors.blue,
      ),
    ));
  }
}
