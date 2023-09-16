import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alerts"),
          leading: const BackButton(color: Colors.white),
        ),
        body: const Center(
          child: Text("Alerts Page"),
        ));
  }
}
