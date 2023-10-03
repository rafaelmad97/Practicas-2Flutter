import 'package:flutter/material.dart';

class Card2Personalized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(
          children: const <Widget>[
            Image(
                image: NetworkImage(
                    "https://http2.mlstatic.com/D_NQ_NP_850427-MLA70892575385_082023-O.webp")),
            Text(
              "Mustang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
