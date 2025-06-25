import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    elevation: 10,
    centerTitle: true,
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.white,
    secondary: Colors.black,
    shadow: Colors.grey.shade500,
    surface: Colors.white,
  ),
);
