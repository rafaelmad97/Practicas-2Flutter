import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/pages/ListView.dart';
import 'package:modulo2_componentesflutter/pages/ListView2.dart';

class TiposdeListViewPage extends StatelessWidget {
  final opciones = ["Tipo de lista 1", "Tipo de lista 2"];

  void handleNavigate(index, context) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ListViewPage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ListView2Page()));
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
        title: const Text("Tipos de lista"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(opciones[index]),
                onTap: () => handleNavigate(index, context),
              ),
          separatorBuilder: (__, _) => const Divider(),
          itemCount: opciones.length),
    );
  }
}
