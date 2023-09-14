import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/Routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: "homepage",
    );
  }
}
