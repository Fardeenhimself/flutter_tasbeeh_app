import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';

class CounterPageCard extends StatelessWidget {
  const CounterPageCard({
    super.key,
    required this.reflectionType,
    required this.counter,
  });

  final ReflectModel reflectionType;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //The Title
        Expanded(
          child: Card(
            child: Row(
              children: [
                Text(reflectionType.title),
                const SizedBox(height: 16),
                Text(reflectionType.arabic),
                const SizedBox(height: 16),
                Text(reflectionType.translation),
              ],
            ),
          ),
        ),
        //The Counter
        Text(counter.toString()),
      ],
    );
  }
}
