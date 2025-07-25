import 'package:flutter/material.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
import 'package:tasbeeh_app/components/haptics_helper.dart';
import 'package:tasbeeh_app/utils/custom_home_card.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('তাসবিহ', style: Theme.of(context).textTheme.titleLarge),
      ),
      extendBodyBehindAppBar: true,

      //A Drawer
      endDrawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomHomeCard(
              text: 'জিকির',
              imagePath: 'assets/images/tasbih.png',
              onPressed: () async {
                await HapticsHelper.vibrate(HapticsType.light);
                Navigator.pushNamed(context, '/reflect_category');
              },
            ),
            const SizedBox(height: 20),
            CustomHomeCard(
              text: 'দুয়া',
              imagePath: 'assets/images/hand.png',
              onPressed: () async {
                await HapticsHelper.vibrate(HapticsType.light);
                Navigator.pushNamed(context, '/asma_category');
              },
            ),
            const SizedBox(height: 20),
            CustomHomeCard(
              text: 'তাশাহুদ',
              imagePath: 'assets/images/dhikr.png',
              onPressed: () async {
                await HapticsHelper.vibrate(HapticsType.light);
                Navigator.pushNamed(context, '/tasahud_category');
              },
            ),
          ],
        ),
      ),
    );
  }
}
