import 'package:flutter/material.dart';
import 'package:modulo2_componentesflutter/Theme.dart';

class ListView2Page extends StatelessWidget {
  final items = [
    "Fry",
    "Bender",
    "Leela",
    "Zoidberg",
    "Hermes",
    "Roberto",
    "Profesor Jiubert",
    "Profesor Benstrom"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de ListView 2"),
        elevation: 0,
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(
              onTap: () {},
              title: Text(items[index]),
              leading: Icon(Icons.person, color: AppTheme.primary),
              trailing: const Icon(Icons.arrow_forward_sharp)),
          separatorBuilder: (__, _) => const Divider()),
    );
  }
}
