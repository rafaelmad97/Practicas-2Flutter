import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/Theme.dart';
import 'package:modulo2_componentesflutter/models/defaultValues/PersonajesFuturama.dart';

import '../components/Card1Personalized.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards"),
          leading: const BackButton(color: Colors.white),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            children: <Widget>[
              ...PersonajesFuturama.map((e) => Card1Personalized(
                  Description: e.Descripcion!, title: e.Nombre))
            ]));
  }
}
