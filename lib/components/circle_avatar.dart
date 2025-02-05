import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCircularAvatar extends StatefulWidget {
  const AppCircularAvatar({super.key});

  @override
  State<AppCircularAvatar> createState() => _AppCircularAvatarState();
}

class _AppCircularAvatarState extends State<AppCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.orangeAccent,
          backgroundImage: NetworkImage(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg"),
        ),
      ),
    );
  }
}
