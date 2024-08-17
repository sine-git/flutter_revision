import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/my_home_page.dart';
import 'package:flutter_revision/page_view.dart';
import 'package:flutter_revision/single_child_scroll_view.dart';
import 'package:flutter_revision/theme_provider.dart';
import 'package:provider/provider.dart';

import 'about_dialog.dart';
import 'main_module.dart';

void main() {
  /*  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: ModularApp(module: MainModule(), child: MyApp()),
  )); */

  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: ModularApp(
        module: MainModule(),
        child: MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //   builder: (context, child) => AppAboutDialog(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: Provider.of<ThemeProvider>(context).theme,
    );
  }
}
