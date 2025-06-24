import 'package:flutter/material.dart';
import 'package:tasbeeh_app/lists/reflect_list.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/pages/counter_page.dart';
import 'package:tasbeeh_app/utils/custom_category_card.dart';

class ReflectCategory extends StatelessWidget {
  const ReflectCategory({super.key, required this.reflections});

  final List<ReflectModel> reflections;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reflect',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        elevation: 40,
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          //Background Image
          Positioned.fill(
            child: Image.asset('assets/images/logo1.jpg', fit: BoxFit.cover),
          ),
          SafeArea(
            child: ListView.builder(
              itemCount: reflections.length,
              itemBuilder: (context, index) {
                final reflection = reflections[index];
                return CustomCategoryCard(
                  reflection: reflection,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CounterPage(reflectionType: reflection),
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
