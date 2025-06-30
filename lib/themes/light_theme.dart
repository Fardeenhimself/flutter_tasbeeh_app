import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    titleLarge: GoogleFonts.galada(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      color: kLightColorTheme.primary,
    ),

    titleMedium: GoogleFonts.notoSerifBengali(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: kLightColorTheme.primary,
    ),

    titleSmall: GoogleFonts.notoSerifBengali(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kLightColorTheme.onTertiary,
    ),

    bodyLarge: GoogleFonts.lateef(
      fontSize: 44,
      color: kLightColorTheme.primary,
    ),

    bodyMedium: GoogleFonts.notoSerifBengali(
      fontSize: 26,
      color: kLightColorTheme.primary,
      fontWeight: FontWeight.w600,
    ),

    bodySmall: GoogleFonts.notoSerifBengali(
      fontSize: 18,
      color: kLightColorTheme.primary,
    ),

    displayLarge: GoogleFonts.inter(
      fontSize: 50,
      color: kLightColorTheme.tertiary,
    ),

    displayMedium: GoogleFonts.notoSerifBengali(
      fontSize: 14,
      color: kLightColorTheme.primary,
    ),

    displaySmall: GoogleFonts.notoSerifBengali(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),

    labelMedium: GoogleFonts.notoSerifBengali(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kLightColorTheme.primary,
    ),

    labelSmall: GoogleFonts.notoSerifBengali(
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
