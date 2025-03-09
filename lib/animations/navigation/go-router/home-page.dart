import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/animations/navigation/go-router/routes.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.purple)),
                  onPressed: () {
                    context.push("/sells/products-list");
                  },
                  child: const Text(
                    "Go to sells",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.purple)),
                  onPressed: () {
                    context.push("/administration/users-list");
                  },
                  child: const Text("Go to Administration ",
                      style: TextStyle(color: Colors.white)))
            ],
          ),
        ));
  }
}
