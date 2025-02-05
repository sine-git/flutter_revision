import 'package:flutter/material.dart';

class AppRawAutoCompleteWidget extends StatefulWidget {
  const AppRawAutoCompleteWidget({super.key});

  @override
  State<AppRawAutoCompleteWidget> createState() =>
      _AppRawAutoCompleteWidgetState();
}

class _AppRawAutoCompleteWidgetState extends State<AppRawAutoCompleteWidget> {
  List<String> citylist = ["City 1", "City 2", "City3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawAutocomplete(
            optionsBuilder: (textEditingValue) {
              return citylist.where(
                (element) => element.contains(textEditingValue.text),
              );
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) =>
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        onFieldSubmitted: (value) {
                          onFieldSubmitted();
                        },
                      ),
                    ),
            optionsViewBuilder: (context, onSelected, options) => Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Material(
                      elevation: 4,
                      child: Container(
                        color: Colors.blue,
                        height: 200,
                        child: ListView.builder(
                            itemCount: options.length,
                            itemBuilder: (context, index) {
                              final String option = options.elementAt(index);

                              return GestureDetector(
                                onDoubleTap: () {
                                  onSelected(option);
                                },
                                child: ListTile(
                                  title: Text(option),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
