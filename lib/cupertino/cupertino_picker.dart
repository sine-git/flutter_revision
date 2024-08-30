import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoPicker extends StatefulWidget {
  const AppCupertinoPicker({super.key});

  @override
  State<AppCupertinoPicker> createState() => _AppCupertinoPickerState();
}

class _AppCupertinoPickerState extends State<AppCupertinoPicker> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
            child: Text("Selected value is ${_value}"),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) => SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: CupertinoPicker(
                            backgroundColor: Colors.white,
                            scrollController:
                                FixedExtentScrollController(initialItem: 1),
                            itemExtent: 30,
                            onSelectedItemChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                            children: const [
                              Text("Value 1"),
                              Text("Value 2"),
                              Text("Value 3"),
                            ]),
                      ));
            }),
      ),
    );
  }
}
