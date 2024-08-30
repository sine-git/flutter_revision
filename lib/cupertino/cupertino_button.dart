import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCupertinoButton extends StatefulWidget {
  const AppCupertinoButton({super.key});

  @override
  State<AppCupertinoButton> createState() => _AppCupertinoButtonState();
}

class _AppCupertinoButtonState extends State<AppCupertinoButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text("Hello my friend")),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(child: Text("First friend"), onPressed: null),
              SizedBox(),
              CupertinoButton.filled(
                  child: Text("Second friend"),
                  onPressed: () {
                    print("Hello my second friend");
                  })
            ],
          ),
        ));
  }
}
