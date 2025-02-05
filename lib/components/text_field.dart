import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget({
    super.key,
  });

  @override
  State<AppTextFieldWidget> createState() => AppTextFieldWidgetState();
}

class AppTextFieldWidgetState extends State<AppTextFieldWidget>
    with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  String? _text;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textController,
            onChanged: (value) {
              setState(() {
                _text = _textController.text;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Input text is $_text")
        ],
      )),
    );
  }
}
