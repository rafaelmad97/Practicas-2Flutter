import 'package:flutter/material.dart';

import '../Theme.dart';

class Card1Personalized extends StatelessWidget {
  String title;
  String Description;

  Card1Personalized(
      {super.key, required this.Description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.card_membership, color: AppTheme.primary),
          title: Text(title),
          subtitle: Text(Description),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Cancelar"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Abrir"),
                ),
              ],
            ))
      ]),
    );
  }
}
