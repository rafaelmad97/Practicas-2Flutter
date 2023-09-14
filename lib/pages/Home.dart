import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final opciones = ["Tipos de listas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App Android"),
      ),
      body: ListView.separated(
          itemBuilder: (__, index) => ListTile(
                title: Text(opciones[index]),
                onTap: () {},
                trailing: const Icon(Icons.open_in_new),
              ),
          separatorBuilder: (__, index) => const Divider(),
          itemCount: opciones.length),
    );
  }
}
