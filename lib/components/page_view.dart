import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  color: Color.fromARGB(255, 108, 157, 197),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.music_note,
                size: 50,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.green,
        )
      ],
    );
  }
}
