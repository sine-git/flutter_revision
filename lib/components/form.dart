import 'package:flutter/material.dart';

class AppFormWidget extends StatefulWidget {
  const AppFormWidget({super.key});

  @override
  State<AppFormWidget> createState() => _AppFormWidgetState();
}

class _AppFormWidgetState extends State<AppFormWidget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        validator: (value) => (value == null || value.isEmpty)
                            ? 'Enter a value'
                            : null),
                    TextFormField(
                      validator: (value) => (value == null || value.isEmpty
                          ? 'Enter a value'
                          : null),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("The form is valid now")));
                          }
                        },
                        child: const Text("Press here"))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
