import 'package:flutter/material.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';

class AsmaHusna extends StatelessWidget {
  const AsmaHusna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দুয়া', style: Theme.of(context).textTheme.titleLarge),
      ),
      endDrawer: CustomDrawer(),
      body: AsmaHusna(),
    );
  }
}
