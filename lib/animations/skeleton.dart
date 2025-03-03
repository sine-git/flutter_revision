// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skeleton_loader/skeleton_loader.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class AppSkeletonPage extends StatefulWidget {
  const AppSkeletonPage({super.key});

  @override
  State<AppSkeletonPage> createState() => AppSkeletonPageState();
}

Future<List<Todo>> getTodos() async {
  try {
    print("Getting todos...");
    final todoResp =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    print("Liste des todos: ${todoResp.body}");
    final jsonResp = jsonDecode(todoResp.body);
    final List<Todo> todos =
        (jsonResp as List<dynamic>).map((todo) => Todo.fromJson(todo)).toList();
    Future.delayed(const Duration(seconds: 30));
    return todos;
  } catch (e, tr) {
    print("Error while getting todos $e, $tr");
    throw "Error while getting todos";
  }
}

class AppSkeletonPageState extends State<AppSkeletonPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: const Text("Liste des todos")),
              FutureBuilder(
                future: getTodos(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SkeletonLoader(
                      builder: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.red,
                          ),
                          height: 160,
                          width: 150,
                        ),
                      ),
                    );

                    const SizedBox(
                      child: Text("Loading..."),
                    );
                  } else if (snapshot.hasError) {
                    return const Text("Error....");
                  } else {
                    List<Todo> todos = snapshot.data!;
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text("${todos[index].id}"),
                          subtitle: Text(todos[index].title),
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Todo {
  final int userId;
  final int id;
  final String title;
  bool completed;
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(dynamic object) {
    return Todo(
        userId: object["userId"] as int,
        id: object["id"] as int,
        title: object["title"] as String,
        completed: object["completed"] as bool);
  }
}
