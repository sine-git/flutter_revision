import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoSearchTextField extends StatefulWidget {
  const AppCupertinoSearchTextField({super.key});

  @override
  State<AppCupertinoSearchTextField> createState() =>
      _AppCupertinoSearchTextFieldState();
}

class _AppCupertinoSearchTextFieldState
    extends State<AppCupertinoSearchTextField> with TickerProviderStateMixin {
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoSearchTextField(
        controller: _textEditingController,
      ),
    ));
  }
}
