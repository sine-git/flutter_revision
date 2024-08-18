import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({super.key});

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 200,
                  width: 200,
                  child: Center(
                      child: Column(
                    children: [
                      Text("Hello my friend"),
                      ElevatedButton(
                          onPressed: () {
                            //    Navigator.pop(context);
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Hell alert"),
                              ),
                            );
                          },
                          child: Text("Close"))
                    ],
                  )),
                ),
              );
            },
            child: Text("ModaleBottomSheet")),
      ),
    );
  }
}
