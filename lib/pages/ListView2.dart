import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(
              onTap: () {},
              title: Text(items[index]),
              leading: const Icon(Icons.person, color: Colors.red),
              trailing: const Icon(Icons.arrow_forward_sharp)),
          separatorBuilder: (__, _) => const Divider()),
    );
  }
}
