import 'package:flutter/material.dart';

// ThemeData darkTheme = ThemeData(
//   appBarTheme: AppBarTheme(
//     backgroundColor: Colors.teal,
//     foregroundColor: Colors.white,
//     elevation: 10,
//     centerTitle: true,
//   ),
//   scaffoldBackgroundColor: Colors.black38,
//   brightness: Brightness.dark,
//   colorScheme: ColorScheme.dark(
//     primary: Color.fromRGBO(18, 18, 18, 1),
//     secondary: Colors.green,
//     shadow: Colors.grey.shade600,
//   ),
// );

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black38,

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
    elevation: 10,
    centerTitle: true,
  ),

  cardColor: const Color.fromRGBO(18, 18, 18, 1), // dark-friendly card color

  colorScheme: ColorScheme.dark(
    primary: const Color.fromRGBO(18, 18, 18, 1), // dark surface for cards
    secondary: Colors.green,
    surface: Colors.grey.shade800,
    shadow: Colors.black54,
  ),

  shadowColor: Colors.black54,

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white70),
    titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  ),
);
