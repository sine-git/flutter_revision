import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCuppertinoActionSheet extends StatefulWidget {
  const AppCuppertinoActionSheet({super.key});

  @override
  State<AppCuppertinoActionSheet> createState() =>
      _AppCuppertinoActionSheetState();
}

class _AppCuppertinoActionSheetState extends State<AppCuppertinoActionSheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: Text("CupertinoAcitonSheet"),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => CupertinoActionSheet(
              title: Text("Here is a flutter tuto"),
              message: const Text("Your message"),
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Do something")),
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Do something else"))
              ],
            ),
          );
        },
      ),
    ));
  }
}
