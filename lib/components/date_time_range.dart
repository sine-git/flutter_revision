import 'package:flutter/material.dart';

class AppDateTimeRagne extends StatefulWidget {
  const AppDateTimeRagne({super.key});

  @override
  State<AppDateTimeRagne> createState() => _AppDateTimeRagneState();
}

class _AppDateTimeRagneState extends State<AppDateTimeRagne> {
  @override
  Widget build(BuildContext context) {
    DateTimeRange selectedDateTimeRange =
        DateTimeRange(start: DateTime.now(), end: DateTime.now());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$selectedDateTimeRange"),
            ElevatedButton(
                onPressed: () async {
                  final DateTimeRange? dateTimeRange =
                      await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(3000));
                  if (dateTimeRange != null) {
                    setState(() {
                      selectedDateTimeRange = dateTimeRange;
                    });
                  }
                },
                child: const Text("Choose days"))
          ],
        ),
      ),
    );
  }
}
