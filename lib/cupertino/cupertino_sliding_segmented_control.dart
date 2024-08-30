import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoSlidingSegementedControl extends StatefulWidget {
  const AppCupertinoSlidingSegementedControl({super.key});

  @override
  State<AppCupertinoSlidingSegementedControl> createState() =>
      _AppCupertinoSlidingSegementedControlState();
}

class _AppCupertinoSlidingSegementedControlState
    extends State<AppCupertinoSlidingSegementedControl> {
  @override
  Widget build(BuildContext context) {
    int? _value = 0;
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoSlidingSegmentedControl(
          groupValue: _value,
          onValueChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          children: {
            0: Text("Text one"),
            1: Text("Text two"),
            2: Text("Text three"),
          }),
    ));
  }
}
