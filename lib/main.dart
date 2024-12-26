import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_revision/theme_provider.dart';
import 'package:provider/provider.dart';

import 'main_module.dart';

void main() {
  /*  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: ModularApp(module: MainModule(), child: MyApp()),
  )); */
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details); // Affiche les erreurs normalement
    debugPrint(details.toStringShort()); // Affiche une trace détaillée
  };

  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: ModularApp(
        module: MainModule(),
        child: const MyApp(),
      )));

  /*  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: ModularApp(module: MainModule(), child: MyApp()),
  )); */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //   builder: (context, child) => AppAboutDialog(),
      //showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      //theme: Provider.of<ThemeProvider>(context).theme,
      themeMode: ThemeMode.dark,
    );

    /* return CupertinoApp.router(
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate);
 */
  }
}
