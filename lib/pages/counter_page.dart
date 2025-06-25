import 'package:flutter/material.dart';
import 'package:tasbeeh_app/model/reflect_model.dart';
import 'package:tasbeeh_app/utils/counter_page_card.dart';
import 'package:tasbeeh_app/utils/custom_app_style.dart';

class CounterPage extends StatefulWidget {
   CounterPage({super.key, required this.reflectionType});

  var reflectionType;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _countNumber = 0;

  //Increment Function
  void incrementCounter() {
    setState(() {
      _countNumber++;
    });
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/logo1.jpg', fit: BoxFit.cover),
          ),

          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterPageCard(
                  reflectionType: widget.reflectionType,
                  counter: _countNumber,
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
                        backgroundColor: Colors.lime,
                        foregroundColor: Colors.white,
                        iconSize: 100,
                        enableFeedback: true,
                        shape: CircleBorder(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
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
        ],
      ),
    );
  }
}
