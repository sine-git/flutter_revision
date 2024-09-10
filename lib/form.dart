import 'package:flutter/material.dart';

final Key _formKey = GlobalKey();

class AppFormWidget extends StatefulWidget {
  const AppFormWidget({super.key});

  @override
  State<AppFormWidget> createState() => _AppFormWidgetState();
}

class _AppFormWidgetState extends State<AppFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (value) => (value != null && value.isNotEmpty
                        ? 'Enter a value'
                        : null),
                  ),
                  TextFormField(
                    validator: (value) => (value != null && value.isNotEmpty
                        ? 'Enter a value'
                        : null),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
