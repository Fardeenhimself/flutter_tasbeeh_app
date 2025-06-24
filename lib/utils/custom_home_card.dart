import 'package:flutter/material.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({
    required this.text,
    required this.imagePath,
    required this.onPressed,
    super.key,
  });

  final String text;
  final String imagePath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(image: AssetImage(imagePath), width: 100, height: 100),
                Text(text),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
