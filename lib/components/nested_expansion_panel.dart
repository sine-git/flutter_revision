import 'package:flutter/material.dart';

class AppNestedExpandsionPanel extends StatefulWidget {
  const AppNestedExpandsionPanel({super.key});

  @override
  State<AppNestedExpandsionPanel> createState() =>
      _AppNestedExpandsionPanelState();
}

class _AppNestedExpandsionPanelState extends State<AppNestedExpandsionPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [buildNestedOfferList(offerTree, 5)],
          ),
        ),
      ),
    );
  }
}

Map<String, dynamic> offerTree = {
  "name": "Africa",
  "lastLevel": false,
  "children": [
    {
      "name": "Ivory Coast",
      "lastLevel": true,
      "children": [
        {
          "name": "Data nighty",
          "amount": "100",
          "currency": "USD",
          "paymentType": "TELCO"
        },
        {
          "name": "Data day",
          "amount": "100",
          "currency": "USD",
          "paymentType": "TELCO"
        }
      ]
    },
    {
      "name": "Mali",
      "lastLevel": true,
      "children": [
        {
          "name": "Data nighty",
          "amount": "100",
          "currency": "USD",
          "paymentType": "OMY"
        }
      ]
    }
  ]
};

Widget buildNestedOfferList(Map<String, dynamic> tree, int padding) {
  String level = tree["name"];
  bool lastLevel = tree["lastLevel"] as bool;
  debugPrint("The name is $level");
  debugPrint("The lastLevel is $lastLevel");
  debugPrint("The children is ${tree["children"]}");
  debugPrint("The children length is ${tree["children"] != null ? [
      (tree["children"] as List).length
    ] : 0}");

  return Padding(
      padding: EdgeInsets.only(left: padding + 5),
      child: ExpansionTile(title: Text(tree["name"]), children: [
        lastLevel
            ? Padding(
                padding: EdgeInsets.only(left: padding + 10),
                child: buildOfferItemList(tree["children"]),
              )
            : Padding(
                padding: EdgeInsets.only(left: padding + 10),
                child: SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemCount: (tree["children"] as List).length,
                      itemBuilder: (context, index) => buildNestedOfferList(
                          tree["children"][index], padding + 10),
                    )),
              )
      ]));
}

Widget buildOfferItemList(List<Map<String, String>> list) {
  return SizedBox(
    height: 100,
    child: ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => offerItem(list[index]["name"],
          list[index]["amount"], list[index]["paymentType"]),
    ),
  );
}

Widget offerItem(String? name, String? amount, String? paymentType) {
  return SizedBox(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('$name'),
        const SizedBox(
          width: 5,
        ),
        Text('$amount'),
        const SizedBox(
          width: 5,
        ),
        Text('$paymentType'),
      ],
    ),
  );
}
