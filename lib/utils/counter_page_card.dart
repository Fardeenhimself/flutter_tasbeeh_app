import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';

class CounterPageCard extends StatelessWidget {
  CounterPageCard({
    super.key,
    required this.reflectionType,
    required this.counter,
    required this.maxCount,
  });

  dynamic reflectionType;
  final int maxCount;
  //final ReflectModel reflectionType;
  final int counter;

  @override
  Widget build(BuildContext context) {
    var checkDisplay = reflectionType.runtimeType;
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
                  checkDisplay == ReflectModel
                      ? reflectionType.title
                      : reflectionType.duaName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  checkDisplay == ReflectModel
                      ? reflectionType.arabic
                      : reflectionType.duaArabic,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 16),
                Text(
                  checkDisplay == ReflectModel
                      ? reflectionType.translation
                      : reflectionType.duaMeaning,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),

        //The Counter
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            '$counter / $maxCount',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const SizedBox(height: 30),
        const Divider(),
        const SizedBox(height: 10),
      ],
    );
  }
}
