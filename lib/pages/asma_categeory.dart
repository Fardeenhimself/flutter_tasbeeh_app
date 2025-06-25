import 'package:flutter/material.dart';
import 'package:tasbeeh_app/lists/asma_list.dart';
import 'package:tasbeeh_app/model/asma_model.dart';
import 'package:tasbeeh_app/pages/counter_page.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';
import 'package:tasbeeh_app/utils/custom_asmaCat.dart';

class AsmaCategeory extends StatelessWidget {
  const AsmaCategeory({super.key, required this.duas});

  final List<AsmaModel> duas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dua', style: CustomAppStyle.appBarStyle(context)),
      ),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
              opacity: AlwaysStoppedAnimation(0.31),
            ),
          ),
          SafeArea(
            child: ListView.builder(
              itemCount: duas.length,
              itemBuilder: (context, index) {
                final dua = duas[index];
                return CustomAsmacat(
                  dua: duas[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CounterPage(reflectionType: dua),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
