import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones"),
        leading: const BackButton(color: Colors.white),
      ),
      body: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text("Ayno"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Ayno"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Ayno"),
          )
        ],
      ),
    );
  }
}
