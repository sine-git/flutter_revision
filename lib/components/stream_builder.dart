import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStreamBuilderWidget extends StatefulWidget {
  const AppStreamBuilderWidget({super.key});

  @override
  State<AppStreamBuilderWidget> createState() => AppStreamBuilderWidgetState();
}

class AppStreamBuilderWidgetState extends State<AppStreamBuilderWidget> {
  final int _currentStep = 0;
  Stream<int> _generateStream() async* {
    await Future.delayed(const Duration(seconds: 2));
    yield 1;
    await Future.delayed(const Duration(seconds: 2));
    yield 2;
    await Future.delayed(const Duration(seconds: 2));
    throw Exception("Opps an error occured");
    /* await Future.delayed(const Duration(seconds: 2));
    yield 3; */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: StreamBuilder(
          stream: _generateStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return const CircularProgressIndicator(
                color: Colors.blue,
              );
            if (snapshot.hasError) {
              return const Text("Error while loading date");
            } else {
              return Text("${snapshot.data}");
            }
          },
        )));
  }
}
