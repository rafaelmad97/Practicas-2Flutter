import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/models/defaultValues/PersonajesFuturama.dart';

class ListView2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de ListView 2"),
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView.separated(
          itemCount: PersonajesFuturama.length,
          itemBuilder: (context, index) => ListTile(
                onTap: () {},
                title: Text(PersonajesFuturama[index].Nombre),
                subtitle: Text(PersonajesFuturama[index].Descripcion!),
                leading: const Icon(Icons.person),
              ),
          separatorBuilder: (__, _) => const Divider()),
    );
  }
}
