import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<dynamic> contactList = [
    {"name": "Ibrahim", "number": "70 70 70 99"},
    {"name": "Awa", "number": "71 23 45 67"},
    {"name": "Moussa", "number": "72 45 67 89"},
    {"name": "Fatou", "number": "73 89 12 34"},
    {"name": "Adama", "number": "74 56 78 90"},
    {"name": "Mariama", "number": "75 11 22 33"},
    {"name": "Ousmane", "number": "76 33 44 55"},
    {"name": "Khadija", "number": "77 99 88 77"},
    {"name": "Cheikh", "number": "78 12 34 56"},
    {"name": "Seynabou", "number": "79 67 89 10"},
    {"name": "Amadou", "number": "70 98 76 54"},
    {"name": "Aminata", "number": "71 21 32 43"},
    {"name": "Mamadou", "number": "72 43 54 65"},
    {"name": "Astou", "number": "73 87 65 43"},
    {"name": "Binta", "number": "74 66 77 88"},
    {"name": "Modou", "number": "75 44 55 66"},
    {"name": "Ndeye", "number": "76 22 33 44"},
    {"name": "Aliou", "number": "77 88 99 00"},
    {"name": "Sokhna", "number": "78 55 44 33"},
    {"name": "Abdoulaye", "number": "79 77 66 55"}
  ];

  List<dynamic> filteredContactList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      filteredContactList = contactList;
    });
  }

  filterContactList(String word) {
    setState(() {
      filteredContactList = contactList
          .where(
            (contact) =>
                (contact["name"] as String).contains(word) ||
                (contact["number"] as String).contains(word),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Search contact"),
                  labelStyle: TextStyle(fontSize: 12)),
              onChanged: (value) {
                filterContactList(value);
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    //scrollDirection: Axis.vertical,
                    itemCount: filteredContactList.length,
                    itemExtent: 100,
                    itemBuilder: (context, index) => Dismissible(
                      key: ValueKey("${filteredContactList[index]}"),
                      movementDuration: const Duration(milliseconds: 500),
                      onDismissed: (direction) {
                        setState(() {
                          contactList.remove(filteredContactList[index]);
                          filteredContactList
                              .remove(filteredContactList[index]);
                        });
                      },
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(
                          filteredContactList[index]["name"],
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(filteredContactList[index]["number"]),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
