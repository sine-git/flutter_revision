import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTableWidget extends StatefulWidget {
  const AppTableWidget({
    super.key,
  });

  @override
  State<AppTableWidget> createState() => AppTableWidgetState();
}

class AppTableWidgetState extends State<AppTableWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(color: Colors.white30),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              const TableRow(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(child: Text("Name")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(child: Text("Surname")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(child: Text("Age")),
                    ),
                  ]),
              ...List.generate(
                100,
                (index) => TableRow(
                    decoration: const BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(child: Text("Name ${index + 1} ")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(child: Text("Surname ${index + 1} ")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(child: Text("Age ${index + 1} ")),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
