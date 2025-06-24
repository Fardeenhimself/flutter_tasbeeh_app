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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        splashColor: Colors.teal,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
    );
  }
}
