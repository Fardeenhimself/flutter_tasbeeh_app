import 'package:flutter/material.dart';
import 'package:tasbeeh_app/components/home_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tasbeeh'), centerTitle: true, elevation: 40),
      body: HomeCard(),
    );
  }
}
