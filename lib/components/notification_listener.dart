import 'package:flutter/material.dart';

class AppNotificationListenerWidget extends StatefulWidget {
  const AppNotificationListenerWidget({super.key});

  @override
  State<AppNotificationListenerWidget> createState() =>
      _AppNotificationListenerWidgetState();
}

class _AppNotificationListenerWidgetState
    extends State<AppNotificationListenerWidget> {
  String _message = "New";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.orangeAccent,
            child: Text(_message),
          ),
          Expanded(
              child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollStartNotification) {
                setState(() {
                  _message = "ScrollStarted";
                });
              } else if (notification is ScrollUpdateNotification) {
                setState(() {
                  _message = "ScrollUpdated";
                });
              } else if (notification is ScrollEndNotification) {
                setState(() {
                  _message = "ScrollEnded";
                });
              }
              return true;
            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon((Icons.favorite)),
                title: Text("item : $index"),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
