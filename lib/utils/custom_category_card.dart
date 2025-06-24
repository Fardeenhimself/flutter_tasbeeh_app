import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    super.key,
    required this.reflection,
    required this.onTap,
  });

  final ReflectModel reflection;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}
