import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      selectedIconTheme: const IconThemeData(color: Colors.blue),
      unselectedItemColor: Colors.grey,
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: "",
          icon: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Icon(CupertinoIcons.house_fill),
          ),
          //icon: Icon( Icons.house),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Icon(CupertinoIcons.chat_bubble_fill),
          ),
          //icon: Icon( Icons.chat),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Icon(CupertinoIcons.folder_fill),
          ),
          //icon: Icon( Icons.folder),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Icon(CupertinoIcons.person_2_fill),
          ),
          //icon: Icon(color: Colors.grey, Icons.person_2),
        ),
      ],
    );
  }
}
