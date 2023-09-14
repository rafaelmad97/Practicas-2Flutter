import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Aplicación Android"),
          ),
          body: const Center(
            child: Text("hola mundo android"),
          )),
    );
  }
}
