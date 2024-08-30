import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoTextField extends StatefulWidget {
  const AppCupertinoTextField({super.key});

  @override
  State<AppCupertinoTextField> createState() => _AppCupertinoTextFieldState();
}

class _AppCupertinoTextFieldState extends State<AppCupertinoTextField> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoTextField(),
    ));
  }
}
