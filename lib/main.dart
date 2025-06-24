import 'package:flutter/material.dart';
import 'package:tasbeeh_app/pages/home.dart';

void main() => runApp(TasbeehApp());

class TasbeehApp extends StatefulWidget {
  const TasbeehApp({super.key});

  @override
  State<TasbeehApp> createState() => _TasbeehAppState();
}

class _TasbeehAppState extends State<TasbeehApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Tasbeeh', home: HomePage());
  }
}
