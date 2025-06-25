import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({
    required this.text,
    required this.imagePath,
    required this.onPressed,
    super.key,
  });

  final String text;
  final String imagePath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomAppStyle.styledCard(
          child: Row(
            children: [
              CustomAppStyle.roundImage(imagePath),
              const SizedBox(width: 20),
              Text(text, style: CustomAppStyle.cardTitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
