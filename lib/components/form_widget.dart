import 'package:flutter/material.dart';

class AppFormPage extends StatefulWidget {
  const AppFormPage({super.key});

  @override
  State<AppFormPage> createState() => _AppFormPageState();
}

class _AppFormPageState extends State<AppFormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, String> formValue = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App form"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        formValue["name"] = value;
                      });
                    },
                    validator: (value) => (value == null || value.isEmpty)
                        ? "You must enter a value here"
                        : null,
                    decoration: const InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        formValue["surnname"] = value;
                      });
                    },
                    validator: (value) => (value == null || value.isEmpty)
                        ? "You must enter a value here"
                        : null,
                    decoration: const InputDecoration(
                        label: Text("Surname"), border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        formValue["age"] = value;
                      });
                    },
                    validator: (value) => (value == null || value.isEmpty)
                        ? "You must enter a value here"
                        : null,
                    decoration: const InputDecoration(
                        label: Text("Age"), border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        formValue["adresse"] = value;
                      });
                    },
                    validator: (value) => (value == null || value.isEmpty)
                        ? "You must enter a value here"
                        : null,
                    decoration: const InputDecoration(
                        label: Text("Adress"), border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  backgroundColor: Colors.purple),
                              onPressed: () {
                                _formKey.currentState!.validate();

                                print("Form value is $formValue");
                              },
                              child: const Text("Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)))),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
