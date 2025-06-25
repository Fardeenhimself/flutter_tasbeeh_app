import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class AsmaHusna extends StatelessWidget {
  const AsmaHusna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দুয়া', style: CustomAppStyle.appBarStyle(context)),
      ),
      body: AsmaHusna(),
    );
  }
}
