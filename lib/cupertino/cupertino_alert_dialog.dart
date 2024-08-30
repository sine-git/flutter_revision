import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoDialog extends StatefulWidget {
  const AppCupertinoDialog({super.key});

  @override
  State<AppCupertinoDialog> createState() => _AppCupertinoDialogState();
}

class _AppCupertinoDialogState extends State<AppCupertinoDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
          child: Text("Show cupertinoDialog"),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text("Alert"),
                content: Text("Are subscribed to flutter map?"),
                actions: [
                  CupertinoDialogAction(
                    child: Text("No"),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text("Yes"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          }),
    ));
  }
}
