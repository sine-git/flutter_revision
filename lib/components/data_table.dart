import 'package:flutter/material.dart';

class AppDataTable extends StatefulWidget {
  const AppDataTable({super.key});

  @override
  State<AppDataTable> createState() => _AppDataTableState();
}

class _AppDataTableState extends State<AppDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(columns: const [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Surname")),
          DataColumn(label: Text("Age")),
        ], rows: const [
          DataRow(
              selected: true,
              color: MaterialStatePropertyAll(Colors.blue),
              cells: [
                DataCell(Text("Ibrahim")),
                DataCell(Text("Coulibaly")),
                DataCell(Text("Ibrahim")),
              ]),
          DataRow(cells: [
            DataCell(Text("Ibrahim")),
            DataCell(Text("Coulibaly")),
            DataCell(Text("Ibrahim")),
          ]),
          DataRow(cells: [
            DataCell(Text("Ibrahim")),
            DataCell(Text("Coulibaly")),
            DataCell(Text("Ibrahim")),
          ])
        ]),
      ),
    );
  }
}
