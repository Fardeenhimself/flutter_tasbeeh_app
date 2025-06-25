import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class CounterPageCard extends StatelessWidget {
  CounterPageCard({
    super.key,
    required this.reflectionType,
    required this.counter,
  });

  var reflectionType;
  //final ReflectModel reflectionType;
  final int counter;

  @override
  Widget build(BuildContext context) {
    print(reflectionType.runtimeType);
    return Column(
      children: [
        //The Title
        Card(
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Text(
                  reflectionType.title,
                  style: CustomAppStyle.cardTitleStyle,
                ),
                const SizedBox(height: 16),
                Text(
                  reflectionType.arabic,
                  style: CustomAppStyle.cardArabicStyle,
                ),
                const SizedBox(height: 16),
                Text(
                  reflectionType.translation,
                  style: CustomAppStyle.cardTranslationStyle,
                ),
              ],
            ),
          ),
        ),

        //The Counter
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            counter.toString(),
            style: CustomAppStyle.counterNumberStyle,
          ),
        ),
        const SizedBox(height: 30),
        const Divider(),
        const SizedBox(height: 10),
      ],
    );
  }
}
