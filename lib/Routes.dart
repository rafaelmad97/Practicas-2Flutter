import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/Home.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "homepage": (context) => HomePage(),
  "listview": (context) => ListViewPage(),
  "listview2": (context) => ListView2Page(),
};
