import 'package:flutter/material.dart';

class AppDropDownMenu extends StatefulWidget {
  const AppDropDownMenu({super.key});

  @override
  State<AppDropDownMenu> createState() => _AppDropDownMenuState();
}

class _AppDropDownMenuState extends State<AppDropDownMenu> {
  String? dropDownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                onSelected: (value) {},
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Value one"),
                      ),
                      const PopupMenuItem(
                        child: Text("Value two"),
                      ),
                      const PopupMenuItem(
                        child: Text("Value three"),
                      )
                    ])
          ],
        ),
        body: Center(
            child: InputDecorator(
          decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(), labelText: "Elements"),
          child: DropdownButton(
            value: dropDownValue,
            underline: Container(
              //height: 2,
              color: Colors.blue,
            ),
            hint: const Text(""),
            // icon: const Icon(Icons.more_vert),
            onChanged: (value) {
              setState(() {
                dropDownValue = value;
              });
            },
            items: const [
              DropdownMenuItem(
                value: "One",
                child: Text("One"),
              ),
              DropdownMenuItem(
                value: "Three",
                child: Text("Two"),
              ),
              DropdownMenuItem(
                value: "Four",
                child: Text("Four"),
              ),
              DropdownMenuItem(value: "Four", child: Text("Four"))
            ],
          ),
        )));
  }
}
