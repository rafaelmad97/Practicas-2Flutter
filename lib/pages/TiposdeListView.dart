import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';

import '../Routes.dart';
import '../models/MenuOpciones.dart';

class TiposdeListViewPage extends StatelessWidget {
  static final List<MenuOpciones> opciones =
      AppRoutes.getListaRutas(parentRoute: "listtypes");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos de lista"),
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(opciones[index].label),
                leading: Icon(opciones[index].icon),
                onTap: () {
                  Navigator.pushNamed(context, opciones[index].route);
                },
              ),
          separatorBuilder: (__, _) => const Divider(),
          itemCount: opciones.length),
    );
  }
}
