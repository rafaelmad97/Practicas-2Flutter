import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/models/defaultValues/PersonajesFuturama.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo de list View 1"),
        ),
        body: ListView(children: [
          ...PersonajesFuturama.map((personaje) => ListTile(
                title: Text(personaje.Nombre),
              ))
        ]));
  }
}
