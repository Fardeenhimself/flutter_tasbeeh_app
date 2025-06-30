import 'package:flutter/material.dart';

var kLightColorTheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 176, 219, 156),
);

ThemeData lightTheme = ThemeData().copyWith(
  colorScheme: kLightColorTheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kLightColorTheme.primaryContainer,
    foregroundColor: kLightColorTheme.onPrimaryContainer,
    centerTitle: true,
  ),

  cardTheme: CardThemeData().copyWith(
    color: kLightColorTheme.primaryContainer,
    shadowColor: kLightColorTheme.secondaryContainer,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(16),
    ),
  ),

  textTheme: ThemeData().textTheme.copyWith(
    titleLarge: TextStyle(
      fontFamily: 'Galada',
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      color: kLightColorTheme.primary,
    ),

    titleMedium: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: kLightColorTheme.primary,
    ),

    titleSmall: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kLightColorTheme.onTertiary,
    ),

    bodyLarge: TextStyle(
      fontFamily: 'Lateef',
      fontSize: 44,
      color: kLightColorTheme.primary,
    ),

    bodyMedium: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 22,
      color: kLightColorTheme.primary,
      fontWeight: FontWeight.w600,
    ),

    bodySmall: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 18,
      color: kLightColorTheme.primary,
    ),

    displayLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 50,
      color: kLightColorTheme.tertiary,
    ),

    displayMedium: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 14,
      color: kLightColorTheme.primary,
    ),

    displaySmall: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),

    labelMedium: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kLightColorTheme.primary,
    ),

    labelSmall: TextStyle(
      fontFamily: 'Bangla',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kLightColorTheme.primary,
    ),
  ),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: kLightColorTheme.primaryContainer,
      foregroundColor: kLightColorTheme.onPrimaryContainer,
      elevation: 8,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shape: CircleBorder(),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kLightColorTheme.primaryContainer,
      foregroundColor: kLightColorTheme.onPrimaryContainer,
      minimumSize: Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 14),
      elevation: 4,
    ),
  ),

  sliderTheme: SliderThemeData().copyWith(
    activeTrackColor: kLightColorTheme.primaryContainer,
    inactiveTrackColor: kLightColorTheme.onPrimaryContainer,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 12.0),
    thumbColor: Colors.red,
  ),
);
