import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoDatePicker extends StatefulWidget {
  const AppCupertinoDatePicker({super.key});

  @override
  State<AppCupertinoDatePicker> createState() => _AppCupertinoDatePickerState();
}

class _AppCupertinoDatePickerState extends State<AppCupertinoDatePicker> {
  DateTime dateTime = DateTime(2018, 01, 01, 10, 10);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              child: Text("Pick a date"),
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) => Container(
                          decoration: BoxDecoration(color: Colors.green),
                          height: 250,
                          child: CupertinoDatePicker(
                              onDateTimeChanged: (dateTime) {
                            setState(() {
                              dateTime = dateTime;
                            });
                          }),
                        ));
              })
        ],
      ),
    ));
  }
}
