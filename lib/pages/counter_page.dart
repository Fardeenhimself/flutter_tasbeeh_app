import 'package:flutter/material.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:tasbeeh_app/components/custom_drawer.dart';
import 'package:tasbeeh_app/components/haptics_helper.dart';
import 'package:tasbeeh_app/components/show_success_modal.dart';
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
  void incrementCounter() async {
    if (_countNumber < widget.maxCount) {
      setState(() {
        _countNumber++;
      });
      if (_countNumber == widget.maxCount) {
        Future.delayed(Duration(milliseconds: 300), () {
          if (!mounted) return;

          //Haptics to play when success
          HapticsHelper.vibrate(HapticsType.success);

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
      endDrawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
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
                  //Reset Button
                  CustomAppStyle.styledIconButton(
                    context: context,
                    onPress: () async {
                      await HapticsHelper.vibrate(HapticsType.light);
                      resetCounter();
                    },
                    icon: Icon(Icons.replay),
                  ),

                  //Plus Button
                  CustomAppStyle.styledIconButton(
                    icon: Icon(Icons.add, size: 100),
                    context: context,
                    onPress: () async {
                      await HapticsHelper.vibrate(HapticsType.light);
                      incrementCounter();
                    },
                  ),

                  //Minus Button
                  CustomAppStyle.styledIconButton(
                    context: context,
                    onPress: () async {
                      await HapticsHelper.vibrate(HapticsType.light);
                      decrementCounter();
                    },
                    icon: Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
