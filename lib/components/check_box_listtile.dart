import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCheckBoxListTile extends StatefulWidget {
  const AppCheckBoxListTile({super.key});

  @override
  State<AppCheckBoxListTile> createState() => _AppCheckBoxListTileState();
}

class _AppCheckBoxListTileState extends State<AppCheckBoxListTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: Text("My checkbox"),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
          subtitle: Text("My subtitle"),
          contentPadding: EdgeInsets.all(20),
          activeColor: Colors.blue,
          checkColor: Colors.blue,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
