import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedPhysicalModal extends StatefulWidget {
  const AppAnimatedPhysicalModal({super.key});

  @override
  State<AppAnimatedPhysicalModal> createState() =>
      AppAnimatedPhysicalModalState();
}

class AppAnimatedPhysicalModalState extends State<AppAnimatedPhysicalModal> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
                child: SizedBox(height: 100, width: 100),
                shape: BoxShape.circle,
                elevation: _isFlat ? 0 : 10,
                color: Colors.pinkAccent,
                shadowColor: Color.fromARGB(255, 186, 234, 76),
                duration: Duration(milliseconds: 200)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                      print("Is flat value is ${_isFlat}");
                    });
                  },
                  child: Text("Press here")),
            )
          ],
        ),
      ),
    );
  }
}
