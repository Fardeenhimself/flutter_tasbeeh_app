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

    // return GestureDetector(
    //   onTap: onPressed,
    //   child: Card(
    //     elevation: 6,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadiusGeometry.circular(16),
    //     ),
    //     color: Colors.white.withAlpha(190),
    //     shadowColor: Colors.grey.shade300,
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    //       child: Row(
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadiusGeometry.circular(12),
    //             child: Image.asset(
    //               imagePath,
    //               width: 60,
    //               height: 60,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           const SizedBox(width: 20),
    //           Text(
    //             text,
    //             style: const TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //               color: Colors.teal,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
