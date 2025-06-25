import 'package:flutter/material.dart';
import 'package:tasbeeh_app/components/show_success_modal.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/utils/counter_page_card.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class CounterPage extends StatefulWidget {
  CounterPage({
    super.key,
    required this.reflectionType,
    required this.maxCount,
  });

  dynamic reflectionType;
  final int maxCount;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _countNumber = 0;

  //Increment Function
  void incrementCounter() {
    if (_countNumber < widget.maxCount) {
      setState(() {
        _countNumber++;
      });
      if (_countNumber == widget.maxCount) {
        Future.delayed(Duration(milliseconds: 300), () {
          if (!mounted) return;
          showDialog(
            context: context,
            builder: (context) => ShowSuccessModal(),
          );
        });
      }
    }
  }

  //Decrement Function
  void decrementCounter() {
    if (_countNumber > 0) {
      setState(() {
        _countNumber--;
      });
    }
  }

  //Reset Function
  void resetCounter() {
    if (_countNumber > 0) {
      setState(() {
        _countNumber = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterPageCard(
              reflectionType: widget.reflectionType,
              counter: _countNumber,
              maxCount: widget.maxCount,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAppStyle.styledIconButton(
                  onPress: () => resetCounter(),
                  icon: Icon(Icons.replay),
                ),
                //Plus Button
                IconButton(
                  onPressed: () => incrementCounter(),
                  icon: Icon(Icons.add),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.teal[300]!,
                    foregroundColor: Colors.white,
                    iconSize: 100,
                    enableFeedback: true,
                    shape: CircleBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    elevation: 8,
                  ),
                ),
                CustomAppStyle.styledIconButton(
                  onPress: () => decrementCounter(),
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
