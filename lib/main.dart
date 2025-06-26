import 'package:flutter/material.dart';
import 'package:tasbeeh_app/lists/asma_list.dart';
import 'package:tasbeeh_app/lists/reflect_list.dart';
import 'package:tasbeeh_app/pages/asma_categeory.dart';
import 'package:tasbeeh_app/pages/home.dart';
import 'package:tasbeeh_app/pages/reflect_category.dart';
import 'package:tasbeeh_app/themes/dark_theme.dart';
import 'package:tasbeeh_app/themes/light_theme.dart';

void main() => runApp(TasbeehApp());

class TasbeehApp extends StatefulWidget {
  const TasbeehApp({super.key});

  @override
  State<TasbeehApp> createState() => _TasbeehAppState();
}

class _TasbeehAppState extends State<TasbeehApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/reflect_category': (context) =>
            ReflectCategory(reflections: ReflectList().reflectList),
        '/asma_category': (context) => AsmaCategeory(duas: AsmaList().asmaList),
      },
    );
  }
}
