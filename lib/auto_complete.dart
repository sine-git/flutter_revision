import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAutoComplete extends StatefulWidget {
  const AppAutoComplete({super.key});

  @override
  State<AppAutoComplete> createState() => _AppAutoCompleteState();
}

class _AppAutoCompleteState extends State<AppAutoComplete> {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text == '') {
              return Iterable<String>.empty();
            }
            return fruits
                .where((element) => element.contains(textEditingValue.text));
          },
        ),
      ),
    );
  }
}
