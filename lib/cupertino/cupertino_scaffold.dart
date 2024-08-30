import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppCuppertinoScaffold extends StatefulWidget {
  const AppCuppertinoScaffold({super.key});

  @override
  State<AppCuppertinoScaffold> createState() => _AppCuppertinoScaffoldState();
}

class _AppCuppertinoScaffoldState extends State<AppCuppertinoScaffold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Flutter map"),
        ),
        backgroundColor: Color.fromARGB(19, 42, 149, 185),
        child: Stack(
          children: [
            Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            )
          ],
        ));
  }
}
