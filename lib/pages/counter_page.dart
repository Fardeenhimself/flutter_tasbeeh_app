import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/utils/counter_page_card.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.reflectionType});

  final ReflectModel reflectionType;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _countNumber = 0;

  //Function

  void incrementCounter() {
    _countNumber++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Column(
        children: [
          CounterPageCard(
            reflectionType: widget.reflectionType,
            counter: _countNumber,
          ),
          IconButton(
            onPressed: () => incrementCounter(),
            icon: Icon(Icons.add),
            style: IconButton.styleFrom(
              backgroundColor: Colors.lime,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
