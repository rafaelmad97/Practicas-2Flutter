import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ListView2Page());
  }
}
