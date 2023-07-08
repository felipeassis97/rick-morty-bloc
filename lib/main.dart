import 'package:flutter/material.dart';
import 'package:rick_morty/app/app_widget.dart';
import 'package:rick_morty/app/shared/injections/di_register.dart';

void main() {
  diSetup();
  runApp(const AppWidget());
}
