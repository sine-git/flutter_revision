import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MaterialCard extends StatefulWidget {
  const MaterialCard({super.key});

  @override
  State<MaterialCard> createState() => _MaterialCardState();
}

class _MaterialCardState extends State<MaterialCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //height: 500,
                // width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.4)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shiba Inu",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              "Dog breed",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.network(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Text(
                      "The Shiba Inu is the smallest of the six original and distinct spitz breeds of dog from Japan. A small, agile dog that copes very well with mountainous terrain, the Shiba Inu was originally bred for hunting.",
                      style: TextStyle(
                          color: Colors.black, fontSize: 14, height: 1.7),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text("LIKE",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    height: 1.7))),
                        TextButton(
                            onPressed: () {},
                            child: Text("SHARE",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    height: 1.7)))
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
