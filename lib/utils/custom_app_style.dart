import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomAppStyle {
  //App Bar Style
  static TextStyle appBarStyle(context) => GoogleFonts.lobster(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
    color: Theme.of(context).appBarTheme.foregroundColor,
  );

  //Text style for card
  static final cardTitleStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
    letterSpacing: 1,
  );

  //Arabic Text Style
  static final cardArabicStyle = GoogleFonts.notoKufiArabic(
    fontSize: 24,
    color: Colors.teal.shade700,
    fontWeight: FontWeight.w600,
  );

  //Translation Text
  static final cardTranslationStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.grey[500]!,
  );

  //Text Style for dua category
  static final duaCatStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.grey[500]!,
    fontWeight: FontWeight.w500,
  );

  //Identity style for dua
  static final duaIdentityStyle = GoogleFonts.inter(
    fontSize: 12,
    color: Colors.red,
  );

  //Counter number Style
  static final counterNumberStyle = GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.teal.shade700,
  );

  //GPT Carrd Theme
    static Card styledCard({
    required BuildContext context,
    required Widget child,
  }) {
    return Card(
      elevation: 6,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: child,
      ),
    );
  }

  // // Reusable Card Style
  // static Card styledCard({
  //   required BuildContext context,
  //   required Widget child,
  // }) {
  //   return Card(
  //     elevation: 6,
  //     color: Theme.of(context).colorScheme.primary,
  //     shadowColor: Theme.of(context).colorScheme.shadow,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  //       child: child,
  //     ),
  //   );
  // }

  //Reusable Button
    static IconButton styledIconButton({
    required Icon icon,
    required VoidCallback onPress,
  }) {
    return IconButton(
      onPressed: onPress,
      icon: icon,
      style: IconButton.styleFrom(
        backgroundColor: Colors.teal[300]!,
        foregroundColor: Colors.white,
        iconSize: 20,
        shape: CircleBorder(),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        elevation: 8,
      ),
    );
  }

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
