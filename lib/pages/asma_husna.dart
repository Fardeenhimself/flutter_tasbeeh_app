import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class AsmaHusna extends StatelessWidget {
  const AsmaHusna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asma-Ul-Husna', style: CustomAppStyle.appBarStyle),
        centerTitle: true,
        elevation: 40,
        backgroundColor: Colors.green,
      ),
      body: Text('Asma-Ul-Husna'),
    );
  }
}
