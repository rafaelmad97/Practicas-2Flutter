import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/models/MenuOpciones.dart';
import 'package:modulo2_componentesflutter/pages/Home.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';
import 'package:modulo2_componentesflutter/pages/TiposdeListView.dart';

class AppRoutes {
  static const _initRoute = "homepage";
  static final List<MenuOpciones> _ListaRutas = [
    MenuOpciones(
        route: "homepage",
        icon: Icons.home,
        label: "Pagina Inicio",
        Screens: HomePage()),
    MenuOpciones(
        route: "listtypes",
        icon: Icons.list,
        label: "Tipos de Lista",
        Screens: TiposdeListViewPage()),
    MenuOpciones(
        route: "listview",
        icon: Icons.list_rounded,
        label: "Lista 1",
        ParentRoute: "listtypes",
        Screens: ListViewPage()),
    MenuOpciones(
        route: "listview2",
        icon: Icons.list_alt,
        label: "Lista 2",
        ParentRoute: "listtypes",
        Screens: ListView2Page()),
    MenuOpciones(
        route: "cards",
        icon: Icons.card_giftcard,
        label: "Tarjetas",
        Screens: ListView2Page()),
    MenuOpciones(
        route: "alerts",
        icon: Icons.add_alert,
        label: "Alertas",
        Screens: ListView2Page()),
  ];

  static String getInitRoute() => _initRoute;

  static bool _filtroItems(MenuOpciones element, String? parentRoute) {
    if (parentRoute == null) {
      return true;
    }
    if (parentRoute == "HomePageOptions") {
      return element.route != "homepage" && element.ParentRoute == null;
    }
    return element.ParentRoute == parentRoute;
  }

  static _getListaRutas({String? parentRoute}) =>
      _ListaRutas.where((element) => _filtroItems(element, parentRoute))
          .map((e) => ({e.route: (buildContext) => e.Screens}));

  static getListaRutas({String? parentRoute}) =>
      _ListaRutas.where((e) => _filtroItems(e, parentRoute)).toList();

  static Map<String, Widget Function(BuildContext)> getAllRoutes(
      BuildContext context) {
    var lista = _getListaRutas();
    Map<String, Widget Function(BuildContext)> routes = {};
    for (final items in lista) {
      routes.addAll(items);
    }
    return routes;
  }

  static Map<String, Widget Function(BuildContext)> getRouteByParent(
      String parentRoute, BuildContext buildContext) {
    var listas = _getListaRutas(parentRoute: parentRoute);
    Map<String, Widget Function(BuildContext)> routes = {};
    for (final items in listas) {
      routes.addAll(items);
    }

    return routes;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => HomePage());
  }
}
