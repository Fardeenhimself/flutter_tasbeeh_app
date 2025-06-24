import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({super.key, required this.reflection});

  final ReflectModel reflection;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(reflection.title),
            const SizedBox(height: 10),
            Text(reflection.arabic),
            const SizedBox(height: 10),
            Text(reflection.translation),
          ],
        ),
      ),
    );
  }
}
