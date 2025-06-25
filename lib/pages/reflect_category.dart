import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/pages/counter_page.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';
import 'package:tasbeeh_app/utils/custom_category_card.dart';

class ReflectCategory extends StatelessWidget {
  const ReflectCategory({super.key, required this.reflections});

  final List<ReflectModel> reflections;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('জিকির', style: CustomAppStyle.appBarStyle(context)),
      ),
      body: SafeArea(
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
    );
  }
}
