import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/custom_home_card.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomHomeCard(
          text: 'Reflect',
          imagePath: 'assets/images/dhikr.png',
          onPressed: () {
            Navigator.pushNamed(context, '/reflect_category');
          },
        ),
        CustomHomeCard(
          text: 'Asma-Ul-Husna',
          imagePath: 'assets/images/asma.png',
          onPressed: () {
            Navigator.pushNamed(context, '/asma_husna');
          },
        ),
      ],
    );
  }
}
