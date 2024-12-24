import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldWidget extends StatefulWidget {
  const AppTextFormFieldWidget({
    super.key,
  });

  @override
  State<AppTextFormFieldWidget> createState() => AppTextFormFieldWidgetState();
}

class AppTextFormFieldWidgetState extends State<AppTextFormFieldWidget> {
  final List<String> _titles = [
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            setState(() {
              Form.of(primaryFocus!.context!).save();
            });
          },
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          onSaved: (newValue) {
                            if (newValue != null) {
                              setState(() {
                                _titles[index] = newValue;
                              });
                            }
                          },
                        ),
                        const SizedBox(),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(_titles[index]),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )),
    ));
  }
}
