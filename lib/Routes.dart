import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/Home.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';
import 'package:modulo2_componentesflutter/pages/TiposdeListView.dart';

class AppRoutes {
  static const initRoute = "homepage";
  static Map<String, Widget Function(BuildContext)> routes = {
    "homepage": (context) => HomePage(),
    "listtypes": (context) => TiposdeListViewPage(),
    "listview": (context) => ListViewPage(),
    "listview2": (context) => ListView2Page(),
  };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => HomePage());
  }
}
