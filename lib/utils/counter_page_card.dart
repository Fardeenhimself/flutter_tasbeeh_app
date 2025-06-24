import 'package:flutter/material.dart';

class CounterPageCard extends StatelessWidget {
  const CounterPageCard({
    required this.countNumber,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final int countNumber;
  final Icon icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            countNumber.toString(),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
