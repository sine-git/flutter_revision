import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinonSegementControl extends StatefulWidget {
  const AppCupertinonSegementControl({super.key});

  @override
  State<AppCupertinonSegementControl> createState() =>
      _AppCupertinonSegementControlState();
}

class _AppCupertinonSegementControlState
    extends State<AppCupertinonSegementControl> {
  String _currentText = "Flutter";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.black,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: CupertinoSegmentedControl(
                    children: {
                      "Flutter": Container(
                        color: Colors.blue,
                      ),
                      "Youtube": Container(),
                      "Map": Container()
                    },
                    onValueChanged: (value) {
                      setState(() {
                        _currentText = value;
                      });
                    }),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
