import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/custom_home_card.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          //Background Picture
          Positioned.fill(
            child: Image.asset('assets/images/logo1.jpg', fit: BoxFit.cover),
          ),

          //Main Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomHomeCard(
                  text: 'Reflect',
                  imagePath: 'assets/images/tasbih.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/reflect_category');
                  },
                ),
                const SizedBox(height: 20),
                CustomHomeCard(
                  text: 'Dua',
                  imagePath: 'assets/images/hand.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/asma_husna');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
