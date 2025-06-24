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
                Text(reflectionType.title),
                const SizedBox(height: 16),
                Text(reflectionType.arabic),
                const SizedBox(height: 16),
                Text(reflectionType.translation),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Divider(),
        const SizedBox(height: 10),
        //The Counter
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(counter.toString(), style: TextStyle(fontSize: 48)),
        ),
      ],
    );
  }
}
