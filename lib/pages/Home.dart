import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/TiposdeListView.dart';

class HomePage extends StatelessWidget {
  final opciones = ["Tipos de listas"];

  void handleNavigate(index, context) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TiposdeListViewPage()));
        break;
      default:
        print("la pagina no existe");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App Android"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(opciones[index]),
                onTap: () {
                  handleNavigate(index, context);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
