import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/asma_model.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class CustomAsmacat extends StatelessWidget {
  const CustomAsmacat({super.key, required this.dua, required this.onTap});

  final AsmaModel dua;
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
                  Text(dua.duaCat, style: CustomAppStyle.duaCatStyle),
                  const SizedBox(height: 10),
                  Text(dua.duaName, style: CustomAppStyle.cardTitleStyle),
                  const SizedBox(height: 10),
                  Text(dua.duaArabic, style: CustomAppStyle.cardArabicStyle),
                  const SizedBox(height: 10),
                  Text(
                    dua.duaMeaning,
                    style: CustomAppStyle.cardTranslationStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(dua.duaIdentity, style: CustomAppStyle.duaIdentityStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
