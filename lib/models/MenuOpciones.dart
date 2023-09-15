import 'package:flutter/material.dart';

class MenuOpciones {
  final String route;
  final IconData icon;
  final String label;
  final Widget Screens;
  final String? ParentRoute;

  MenuOpciones(
      {required this.route,
      required this.icon,
      required this.label,
      required this.Screens,
      this.ParentRoute});
}
