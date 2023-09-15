import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/Routes.dart';
import 'package:modulo2_componentesflutter/models/MenuOpciones.dart';
import 'package:modulo2_componentesflutter/pages/TiposdeListView.dart';

class HomePage extends StatelessWidget {
  static final List<MenuOpciones> opciones =
      AppRoutes.getListaRutas(parentRoute: "HomePageOptions");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App Android"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(opciones[index].label),
                leading: Icon(opciones[index].icon),
                onTap: () {
                  Navigator.pushNamed(context, opciones[index].route);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
