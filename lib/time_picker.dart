import 'package:flutter/material.dart';

class AppTimePickerWidget extends StatefulWidget {
  const AppTimePickerWidget({super.key});

  @override
  State<AppTimePickerWidget> createState() => RichTextWidgetState();
}

class RichTextWidgetState extends State<AppTimePickerWidget> {
  TimeOfDay selectedtimeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedtimeOfDay.hour}:${selectedtimeOfDay.minute}"),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: selectedtimeOfDay,
                    initialEntryMode: TimePickerEntryMode.dial);
                setState(() {
                  selectedtimeOfDay = timeOfDay!;
                });
              },
              child: const Text("Change time"),
            )
          ],
        ),
      ),
    );
  }
}
