import 'package:flutter/material.dart';
import 'package:tasbeeh_app/utils/counter_page_card.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

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
      body: SafeArea(
        child: CounterPageCard(
          countNumber: _countNumber,
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              incrementCounter();
            });
          },
        ),
      ),
    );
  }
}
