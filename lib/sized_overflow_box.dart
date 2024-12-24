import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSizedOverflowBoxWidget extends StatefulWidget {
  const AppSizedOverflowBoxWidget({super.key});

  @override
  State<AppSizedOverflowBoxWidget> createState() =>
      _AppSizedOverflowBoxWidgetState();
}

class _AppSizedOverflowBoxWidgetState extends State<AppSizedOverflowBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.orange,
          child: SizedOverflowBox(
            size: const Size(50, 50),
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Button")),
          ),
        ),
      ),
    );
  }
}
