import 'package:flutter/material.dart';

class AppModalBarrierWidget extends StatefulWidget {
  const AppModalBarrierWidget({super.key});

  @override
  State<AppModalBarrierWidget> createState() => _AppModalBarrierWidgetState();
}

class _AppModalBarrierWidgetState extends State<AppModalBarrierWidget> {
  @override
  Widget build(BuildContext context) {
    bool showBarrier = true;
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
            //   width: double.infinity,
            // height: double.infinity,
            color: Colors.green,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                setState(() {
                  showBarrier = !showBarrier;
                });
              },
              child: const Text("Click here"),
            ),
          ),
        ),
        if (!showBarrier)
          ModalBarrier(
            // dismissible: true,
            color: Colors.black.withOpacity(0.4),
          ),
      ]),
    );
  }
}
