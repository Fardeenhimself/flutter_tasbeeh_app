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
    //debug print to see if it got the list
    print("Reflections length: ${reflections.length}");
    return Scaffold(
      appBar: AppBar(title: Text('Reflect Page')),
      body: ListView.builder(
        itemCount: reflections.length,
        itemBuilder: (context, index) {
          final reflection = reflections[index];
          CustomCategoryCard(
            reflection: reflection,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CounterPage(reflectionType: reflection),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
