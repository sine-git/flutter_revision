import 'package:flutter/material.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({super.key});

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Date is $dateTime"),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2000),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2000));

                  setState(() {
                    dateTime = dateTime;
                  });
                },
                child: const Text("Choose date"))
          ],
        ),
      ),
    );
  }
}
