import 'package:flutter/material.dart';

class AppPhysicalModal extends StatefulWidget {
  const AppPhysicalModal({super.key});

  @override
  State<AppPhysicalModal> createState() => _AppPhysicalModalState();
}

class _AppPhysicalModalState extends State<AppPhysicalModal> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        /*  child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 10,
                    blurStyle: BlurStyle.outer,
                    offset: const Offset(0, 0),
                    color: Colors.pink.withOpacity(0.05))
              ]),
        ), */
        child: PhysicalModel(
          elevation: 20,
          color: Colors.pink,
          shadowColor: Colors.pinkAccent,
          shape: BoxShape.circle,
          child: SizedBox(
            // color: Colors.orange,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
