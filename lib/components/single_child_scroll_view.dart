import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppSingleChildScrollView extends StatefulWidget {
  const AppSingleChildScrollView({super.key});

  @override
  State<AppSingleChildScrollView> createState() =>
      AppSingleChildScrollViewState();
}

class AppSingleChildScrollViewState extends State<AppSingleChildScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 500,
              color: Color.fromARGB(255, 46, 46, 46),
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Color.fromARGB(255, 36, 81, 37),
              width: 500,
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 150,
                          color: Colors.blue,
                        ),
                      )),
            ),
            Container(
              width: 500,
              height: 500,
              color: Color.fromARGB(255, 40, 38, 177),
            ),
            Container(
              width: 500,
              height: 500,
              color: Color.fromARGB(255, 23, 104, 92),
            ),
            Container(
              width: 500,
              height: 500,
              color: Color.fromARGB(255, 15, 57, 16),
            )
          ],
        ),
      ),
    ));
  }
}
