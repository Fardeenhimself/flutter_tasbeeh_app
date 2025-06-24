import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/utils/custom_category_card.dart';

class ReflectCategory extends StatelessWidget {
  const ReflectCategory({super.key, required this.reflections});

  final List<ReflectModel> reflections;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reflect Page')),
      body: ListView.builder(
        itemCount: reflections.length,
        itemBuilder: (context, index) =>
            CustomCategoryCard(reflection: reflections[index]),
      ),
    );
  }
}
