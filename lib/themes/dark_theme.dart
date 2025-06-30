import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kDarkColorTheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 92, 131, 116),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: kDarkColorTheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kDarkColorTheme.primaryContainer,
    foregroundColor: kDarkColorTheme.onPrimaryContainer,
    centerTitle: true,
  ),

  cardTheme: CardThemeData().copyWith(
    color: kDarkColorTheme.primaryContainer,
    shadowColor: kDarkColorTheme.secondaryContainer,
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
      color: kDarkColorTheme.primary,
    ),

    titleMedium: GoogleFonts.notoSerifBengali(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: kDarkColorTheme.primary,
    ),

    titleSmall: GoogleFonts.notoSerifBengali(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kDarkColorTheme.onTertiary,
    ),

    bodyLarge: GoogleFonts.lateef(fontSize: 44, color: kDarkColorTheme.primary),

    bodyMedium: GoogleFonts.notoSerifBengali(
      fontSize: 22,
      color: kDarkColorTheme.primary,
      fontWeight: FontWeight.w600,
    ),

    bodySmall: GoogleFonts.notoSerifBengali(
      fontSize: 18,
      color: kDarkColorTheme.primary,
    ),

    displayLarge: GoogleFonts.inter(
      fontSize: 50,
      color: kDarkColorTheme.primary,
    ),

    displayMedium: GoogleFonts.notoSerifBengali(
      fontSize: 14,
      color: kDarkColorTheme.tertiary,
    ),

    displaySmall: GoogleFonts.notoSerifBengali(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),

    labelMedium: GoogleFonts.notoSerifBengali(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kDarkColorTheme.primary,
    ),

    labelSmall: GoogleFonts.notoSerifBengali(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kDarkColorTheme.primary,
    ),
  ),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: kDarkColorTheme.primaryContainer,
      foregroundColor: kDarkColorTheme.onPrimaryContainer,
      elevation: 8,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shape: CircleBorder(),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorTheme.primaryContainer,
      foregroundColor: kDarkColorTheme.onPrimaryContainer,
      minimumSize: Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 14),
      elevation: 4,
    ),
  ),

  sliderTheme: SliderThemeData().copyWith(
    activeTrackColor: kDarkColorTheme.primaryContainer,
    inactiveTrackColor: kDarkColorTheme.onPrimaryContainer,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 12.0),
    thumbColor: Colors.red,
  ),
);
