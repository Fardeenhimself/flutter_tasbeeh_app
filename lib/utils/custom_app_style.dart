import 'package:flutter/material.dart';

class CustomAppStyle {
  //GPT Card Theme
  static Card styledCard({
    required BuildContext context,
    required Widget child,
  }) {
    return Card(
      elevation: 5,
      color: Theme.of(context).colorScheme.primaryContainer,
      shadowColor: Theme.of(context).colorScheme.shadow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: child,
      ),
    );
  }

  //Reusable Button
  static IconButton styledIconButton({
    required Icon icon,
    required BuildContext context,
    required VoidCallback onPress,
  }) {
    return IconButton(
      onPressed: onPress,
      icon: icon,
      style: Theme.of(context).iconButtonTheme.style,
    );
  }

  //Images
  static Widget roundImage(String imagePath, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Image.asset(
        imagePath,
        width: 60,
        height: 60,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
