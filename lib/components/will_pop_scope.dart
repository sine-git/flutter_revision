import 'package:flutter/material.dart';

class AppWillPopScopeWidget extends StatefulWidget {
  const AppWillPopScopeWidget({super.key});

  @override
  State<AppWillPopScopeWidget> createState() => _AppWillPopScopeWidgetState();
}

class _AppWillPopScopeWidgetState extends State<AppWillPopScopeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NextPageWidget(),
              ));
            },
            child: const Text("Next page")),
      ),
    );
  }
}

class NextPageWidget extends StatefulWidget {
  const NextPageWidget({super.key});

  @override
  State<NextPageWidget> createState() => _NextPageWidgetState();
}

class _NextPageWidgetState extends State<NextPageWidget> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          /* leading: IconButton(
              onPressed: () {
                //Navigator.pop(context);
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)), */
          title: const Text("Next page"),
        ),
      ),
    );
  }
}
